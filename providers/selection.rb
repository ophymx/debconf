use_inline_resources if defined?(use_inline_resources)

def whyrun_supported?
  true
end

action :add do
  selection_line = "#{new_resource.package} #{new_resource.question} #{new_resource.type} #{new_resource.value}"

  package 'debconf-utils'

  execute 'debconf-set-selections' do
    command "echo '#{selection_line}' | debconf-set-selections"
  end
end
