oneGB = 1 * 1000 * 1000 # in KB

$testbed = Proc.new do
  {
    "name" => "oom-testbed",
    "version" => 3,
    "esx" => [
      {
        "name" => "esx.0",
        "nics" => 4,
        "vc" => "vc.0",
        "customBuild" => "ob-17630552",
        "dc" => "vcqaDC",
        "clusterName" => "Mcluster",
        "style" => "fullInstall",
        "cpus" => 32, # 32 vCPUs
        "memory" => 98000, # 98GB memory
        "fullClone" => true,
        "disks" => [ 1 * 1000 * oneGB ], # 2 TB Disk
        "guestOSlist" => [
          {
            "vmName" => "tkgmjumpbox",
            "ovfuri" => NimbusUtils.get_absolute_ovf("VanillaUbuntuServerBionic-18.04.2-LTS/VanillaUbuntuServerBionic-18.04.2-LTS.ovf")
          }
        ]
      },
      {
        "name" => "esx.1",
        "nics" => 4,
        "vc" => "vc.0",
        "customBuild" => "ob-17630552",
        "dc" => "vcqaDC",
        "clusterName" => "Mcluster",
        "style" => "fullInstall",
        "cpus" => 32, # 32 vCPUs
        "memory" => 98000, # 98GB memory
        "fullClone" => true,
        "disks" => [ 1 * 1000 * oneGB ], # 2 TB Disk
        "guestOSlist" => [
          {
            "vmName" => "communityjumpbox",
            "ovfuri" => NimbusUtils.get_absolute_ovf("VanillaUbuntuServerBionic-18.04.2-LTS/VanillaUbuntuServerBionic-18.04.2-LTS.ovf")
          }
        ]
      },
      {
        "name" => "esx.2",
        "nics" => 4,
        "vc" => "vc.0",
        "customBuild" => "ob-17630552",
        "dc" => "vcqaDC",
        "clusterName" => "Scluster",
        "style" => "fullInstall",
        "cpus" => 32, # 32 vCPUs
        "memory" => 98000, # 98GB memory
        "fullClone" => true,
        "disks" => [ 1 * 1000 * oneGB ], # 2 TB Disk
        "guestOSlist" => [
          {
            "vmName" => "tkgsjumpbox",
            "ovfuri" => NimbusUtils.get_absolute_ovf("VanillaUbuntuServerBionic-18.04.2-LTS/VanillaUbuntuServerBionic-18.04.2-LTS.ovf")
          }
        ]
      },
      {
        "name" => "esx.3",
        "nics" => 4,
        "vc" => "vc.0",
        "customBuild" => "ob-17630552",
        "dc" => "vcqaDC",
        "clusterName" => "Scluster",
        "style" => "fullInstall",
        "cpus" => 32, # 32 vCPUs
        "memory" => 98000, # 98GB memory
        "fullClone" => true,
        "disks" => [ 1 * 1000 * oneGB ], # 2 TB Disk
        "guestOSlist" => [
          {
            "vmName" => "windowsjumpbox",
            "ovfuri" => NimbusUtils.get_absolute_ovf("VanillaUbuntuServerBionic-18.04.2-LTS/VanillaUbuntuServerBionic-18.04.2-LTS.ovf")
          }
        ]
      }
    ],

    "vcs" => [
      {
        "name" => "vc.0",
        "type" => "vcva",
        "customBuild" => "ob-17920168",
        "dcName" => ["vcqaDC"],
        "enableDrs" => true,
        "clusters" => [
          {
            "name" => "Mcluster",
            "dc" => "vcqaDC"
          },
        {
            "name" => "Scluster",
            "dc" => "vcqaDC"
          }
        ]
      }
    ],

    "beforePostBoot" => Proc.new do |runId, testbedSpec, vmList, catApi, logDir|
    end,
    "postBoot" => Proc.new do |runId, testbedSpec, vmList, catApi, logDir|
    end
  }
end
