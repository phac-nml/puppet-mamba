class mamba (
  String $version = '23.1.0-1'
){
  file { "/tmp/mambaforge-${version}.sh":
    ensure => 'file',
    path   => "/tmp/mambaforge-${version}.sh",
    source => "https://github.com/conda-forge/miniforge/releases/download/${version}/Mambaforge-Linux-x86_64.sh"
  }
  exec { 'install mamba':
    command  => "export HOME='/root' && bash /tmp/mambaforge-${version}.sh -b -p '/opt/conda' -f && . '/opt/conda/etc/profile.d/conda.sh' && conda activate && . '/opt/conda/etc/profile.d/mamba.sh' && mamba init --system",
    provider => 'shell',
    require  => File["/tmp/mambaforge-${version}.sh"],
    creates  => '/opt/conda/bin/mamba'
  }
}
