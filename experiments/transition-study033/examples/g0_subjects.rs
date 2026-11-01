//! Export actual admitted G0 subjects as reviewable data; produce no certificate.
#![forbid(unsafe_code)]
use core_proof_feasibility033::{
    evidence::{digest, encode, publish_file},
    profile::Error,
    reference::{TemplateConfig, module_wire, recognize},
};
use std::path::PathBuf;

fn main() -> Result<(), Error> {
    let mut args = std::env::args_os().skip(1);
    let out = PathBuf::from(
        args.next()
            .ok_or_else(|| Error::Invalid("expected an explicit output directory".into()))?,
    );
    if args.next().is_some() {
        return Err(Error::Invalid("unexpected subject export argument".into()));
    }
    let cases = [
        ("boundary", TemplateConfig::default()),
        (
            "scaling",
            TemplateConfig {
                limit: 16_384,
                ..Default::default()
            },
        ),
        (
            "padded",
            TemplateConfig {
                limit: 16_384,
                padding_bytes: 512,
                ..Default::default()
            },
        ),
    ];
    let mut entries = Vec::new();
    for (name, config) in cases {
        let wire = module_wire(&config)?;
        let recognized = recognize(&wire.to_string(), &config)?;
        let bytes = encode(&wire)?;
        publish_file(&out.join(format!("{name}.module.json")), &bytes)?;
        entries.push(serde_json::json!({"name":name,"config":config,"wire_file":format!("{name}.module.json"),"wire_sha256":digest(&bytes),"source_descriptor_sha256":recognized.source_descriptor_sha256.iter().map(|b|format!("{b:02x}")).collect::<String>(),"actual_Core_behavior":recognized.module.behavior_version(),"semantic_profile":"CommandIntents","g1_pass":false}));
    }
    publish_file(
        &out.join("catalog.json"),
        &encode(
            &serde_json::json!({"format_version":"core033.g0-subjects.v1","entries":entries,"scope":"actual Core admission/recognition data; no correspondence certificate","g1_pass":false}),
        )?,
    )?;
    Ok(())
}
