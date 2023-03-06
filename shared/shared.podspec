Pod::Spec.new do |spec|
    spec.name                     = 'shared'
    spec.version                  = '1.0'
    spec.homepage = 'https://www.cocoapods.org'
    spec.source = { :git => "https://github.com/schech1/TestLibrary", :tag => "main" }
    spec.authors = 'chris'
    spec.license = ''
    spec.summary = 'testlib'
    spec.static_framework = true
    spec.vendored_frameworks      = 'shared/build/cocoapods/framework/shared.framework'
    spec.libraries                = 'c++'
    spec.ios.deployment_target = '14.1'
                
                
    spec.pod_target_xcconfig = {
        'KOTLIN_PROJECT_PATH' => ':shared',
        'PRODUCT_MODULE_NAME' => 'shared',
    }
                
    spec.script_phases = [
        {
            :name => 'Build shared',
            :execution_position => :before_compile,
            :shell_path => '/bin/sh',

        }
    ]
                
end