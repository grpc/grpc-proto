load("@com_google_googleapis//:repository_rules.bzl", "switched_rules_by_language")

def _switched_rules_extension_impl(ctx):
    switched_rules_by_language(
        name = "com_google_googleapis_imports",
    )

switched_rules_extension = module_extension(implementation = _switched_rules_extension_impl)
