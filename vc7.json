oneGB = 1 * 1000 * 1000 # in KB
 
$testbed = Proc.new do
  {
    "name" => "testbed-test",
    "version" => 3,
    "esx" => (0..0).map do | idx |
      {
        "name" => "esx.#{idx}",
        "vc" => "vc.0",
        "customBuild" => "ob-17325551",
        "dc" => "vcqaDC",
        "clusterName" => "cluster0",
        "style" => "fullInstall",
        "cpus" => 32, # 32 vCPUs
        "memory" => 98000, # 98GB memory
        "fullClone" => true,
        "disks" => [ 1 * 1000 * oneGB ], # 2 TB Disk
        "guestOSlist" => [         
          {
            "vmName" => "ubuntu-vm.#{idx}",
            "ovfuri" => NimbusUtils.get_absolute_ovf("VanillaUbuntuServerBionic-18.04.2-LTS/VanillaUbuntuServerBionic-18.04.2-LTS.ovf")
          }
        ]
      }
    end,
 
    "vcs" => [
      {
        "name" => "vc.0",
        "type" => "vcva",
        "customBuild" => "ob-17327517",
        "dcName" => ["vcqaDC"],
        "enableDrs" => true,
        "clusters" => [
          {
            "name" => "cluster0",
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
