"""Selected-input preservation, no whole historical archive hashing."""

from pathlib import Path
from artifact_io import verify_ref


def verify(root, baseline):
    for ref in baseline["files"]:
        verify_ref(root, ref)
    checks = []
    for ref in baseline["unrelated_files"]:
        p = Path(root) / ref["path"]
        s = p.stat()
        good = (
            s.st_size == ref["bytes"]
            and s.st_mtime_ns == ref["mtime_ns"]
            and s.st_ino == ref["inode"]
        )
        checks.append({"path": ref["path"], "metadata_equal": good})
        if not good:
            raise ValueError("UnrelatedFileMetadataChanged")
    return {
        "selected_inputs_equal": True,
        "selected_input_count": len(baseline["files"]),
        "unrelated": checks,
        "scope": "selected byte refs and unrelated metadata only; no whole archive scan",
    }


class HistoricalResolver:
    """Resolve an exact old logical identity directly to preserved bytes.

    Mappings cannot chain, silently fall back to revised bytes, or change a
    digest. They preserve byte identity; they do not import semantic authority.
    """

    def __init__(self, registry, mappings):
        from records import validate_ref_v2

        self.registry = registry
        self.mappings = {}
        for mapping in mappings:
            if not isinstance(mapping, dict) or not isinstance(
                mapping.get("mappings"), list
            ):
                raise ValueError("V2HistoricalMapping")
            for entry in mapping["mappings"]:
                if not isinstance(entry, dict) or set(entry) != {
                    "logical_v1",
                    "physical",
                }:
                    raise ValueError("V2HistoricalEntry")
                logical = {"root_id": "repository", **entry["logical_v1"]}
                validate_ref_v2(logical)
                validate_ref_v2(entry["physical"])
                physical = entry["physical"]
                if (logical["bytes"], logical["sha256"]) != (
                    physical["bytes"],
                    physical["sha256"],
                ):
                    raise ValueError("V2HistoricalIdentityChanged")
                key = self._key(logical)
                if key in self.mappings:
                    raise ValueError("V2ConflictingHistoricalMapping")
                # Verify the physical archive itself, never recurse via maps.
                registry.verify(physical)
                self.mappings[key] = dict(physical)

    @staticmethod
    def _key(ref):
        return (ref["root_id"], ref["path"], ref["bytes"], ref["sha256"])

    def resolve(self, ref):
        from records import validate_ref_v2

        validate_ref_v2(ref)
        physical = self.mappings.get(self._key(ref), ref)
        return self.registry.verify(physical)


def verify_unrelated_v2(root, refs):
    from artifact_io import RootRegistry
    from records import u64

    registry = RootRegistry({"repository": Path(root)}, readonly=["repository"])
    checks = []
    for ref in refs:
        if (
            not isinstance(ref, dict)
            or set(ref) != {"path", "bytes", "mtime_ns", "inode", "method"}
            or ref["method"] != "metadata_only_no_payload_hash"
        ):
            raise ValueError("V2UnrelatedMetadataFields")
        for field in ("bytes", "mtime_ns", "inode"):
            u64(ref[field])
        path = registry.path("repository", ref["path"])
        st = path.stat()
        if (
            st.st_size != ref["bytes"]
            or st.st_mtime_ns != ref["mtime_ns"]
            or st.st_ino != ref["inode"]
        ):
            raise ValueError("V2UnrelatedMetadataChanged")
        checks.append(
            {"path": ref["path"], "metadata_equal": True, "method": ref["method"]}
        )
    return checks
