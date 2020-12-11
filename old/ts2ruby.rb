require 'typescript-src'
load 'app.component.ts'

TypeScript::Src.use_external_tsc = false # if you want to use tsc from installed node.js module.
                                        # false by default (it uses built-in tsc)

p TypeScript::Src.tsc_path # => #<Pathname:/path/to/tsc>
p TypeScript::Src.js_path  # => #<Pathname:/path/to/typescript.js>
p TypeScript::Src.version  # => "1.4.1.3"
p TypeScript::Src.class_variables
p TypeScript::Src.package_json_path

