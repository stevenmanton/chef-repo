
user = "vagrant"
miniconda_installer = "#{Chef::Config[:file_cache_path]}/miniconda-installer.sh"
anaconda_root = "/home/#{user}/anaconda"

# Push the miniconda installer to the VM:
remote_file miniconda_installer do
  source "http://repo.continuum.io/miniconda/Miniconda3-2.2.2-Linux-x86.sh"
  action :create_if_missing

  not_if "hash conda 2>/dev/null"
end

# Run the installer script:
bash "Install conda using script" do
  user "#{user}"
  cwd  "#{Chef::Config[:file_cache_path]}"

  code <<-EOS
    rm -rf /home/#{user}/anaconda
    bash miniconda-installer.sh -b -p #{anaconda_root}
  EOS

  creates "#{anaconda_root}/bin/conda"
end

# Add anaconda to path
bash "Add anaconda to path" do
  code <<-EOS
    echo 'export PATH="#{anaconda_root}/bin:$PATH"' >> /home/#{user}/.bash_profile
    source /home/#{user}/.bash_profile
  EOS

  not_if "grep anaconda /home/#{user}/.bash_profile"
end

# Update conda:
execute "Update conda" do
  command "conda update conda --yes"
end