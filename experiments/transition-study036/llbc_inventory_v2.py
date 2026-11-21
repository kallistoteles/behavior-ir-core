"""Index actual LLBC references without granting any semantic proof status."""

import hashlib
import json


def body_inventory(body, *, function_ids=None):
    result = {
        "body_present": isinstance(body, dict),
        "body_form": "translated"
        if isinstance(body, dict)
        else "opaque"
        if body == "Opaque"
        else "absent",
        "body_sha256": None,
        "call_sites": [],
        "function_references": [],
        "direct_function_ids": [],
        "unresolved_call_sites": [],
        "classification": "unestablished",
    }
    if not isinstance(body, dict):
        if body is not None and body != "Opaque":
            raise ValueError("LlbcInventoryBodyForm")
        return result
    result["body_sha256"] = hashlib.sha256(
        json.dumps(
            body, sort_keys=True, separators=(",", ":"), ensure_ascii=False
        ).encode()
    ).hexdigest()
    direct = set()

    def function_id(index):
        if type(index) is not int or index < 0:
            raise ValueError("LlbcInventoryFunctionId")
        if function_ids is not None and index not in function_ids:
            raise ValueError("LlbcInventoryMissingFunctionDeclaration:" + str(index))
        return index

    stack = [("", body)]
    while stack:
        path, node = stack.pop()
        if isinstance(node, dict):
            kind = node.get("kind")
            if isinstance(kind, dict) and set(kind) == {"Fun"}:
                index = function_id(kind["Fun"])
                direct.add(index)
                result["function_references"].append(
                    {"json_pointer": path, "function_id": index, "reference": node}
                )
            if "Call" in node:
                call = node["Call"]
                if (
                    not isinstance(call, dict)
                    or not isinstance(call.get("call"), dict)
                    or "func" not in call["call"]
                ):
                    raise ValueError("LlbcInventoryCallShape")
                target = call["call"]["func"]
                regular = target.get("Regular") if isinstance(target, dict) else None
                target_kind = regular.get("kind") if isinstance(regular, dict) else None
                index = (
                    function_id(target_kind["Fun"])
                    if isinstance(target_kind, dict) and set(target_kind) == {"Fun"}
                    else None
                )
                entry = {
                    "json_pointer": path + "/Call",
                    "func": target,
                    "call": call["call"],
                    "direct_function_id": index,
                }
                result["call_sites"].append(entry)
                if index is None:
                    result["unresolved_call_sites"].append(entry)
            for key, value in reversed(list(node.items())):
                escaped = key.replace("~", "~0").replace("/", "~1")
                stack.append((path + "/" + escaped, value))
        elif isinstance(node, list):
            for index in range(len(node) - 1, -1, -1):
                stack.append((path + "/" + str(index), node[index]))
    result["direct_function_ids"] = sorted(direct)
    return result
