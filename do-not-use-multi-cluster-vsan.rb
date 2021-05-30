GB = 1 * 1000 * 1000

$testbed = Proc.new do
  {
    "name" => "oom-testbed",
    "version" => 3,
    "esx" => [
      {
        "name" => "esx.0",
        "ssds" => [20 * GB],
        "vc" => "vc.0",
        "customBuild" => "ob-17630552",
        "dc" => "Datacenter",
        "clusterName" => "Mcluster",
        "style" => "fullInstall",
        "cpus" => 32, # 32 vCPUs
        "memory" => 98000,
        "fullClone" => true,
        "freeLocalLuns" => 2,
        "disks" => [ 500 * GB, 500 * GB ]
      },
      {
        "name" => "esx.1",
        "ssds" => [20 * GB],
        "vc" => "vc.0",
        "customBuild" => "ob-17630552",
        "dc" => "Datacenter",
        "clusterName" => "Mcluster",
        "style" => "fullInstall",
        "cpus" => 32, # 32 vCPUs
        "memory" => 98000,
        "fullClone" => true,
        "freeLocalLuns" => 2,
        "disks" => [ 500 * GB, 500 * GB ]
      },
      {
        "name" => "esx.2",
        "ssds" => [20 * GB],
        "vc" => "vc.0",
        "customBuild" => "ob-17630552",
        "dc" => "Datacenter",
        "clusterName" => "Scluster",
        "style" => "fullInstall",
        "cpus" => 32, # 32 vCPUs
        "memory" => 98000,
        "fullClone" => true,
        "freeLocalLuns" => 2,
        "disks" => [ 500 * GB, 500 * GB ]
      },
      {
        "name" => "esx.3",
        "ssds" => [20 * GB],
        "vc" => "vc.0",
        "customBuild" => "ob-17630552",
        "dc" => "Datacenter",
        "clusterName" => "Scluster",
        "style" => "fullInstall",
        "cpus" => 32, # 32 vCPUs
        "memory" => 98000,
        "fullClone" => true,
        "freeLocalLuns" => 2,
        "disks" => [ 500 * GB, 500 * GB ]
      }
    ],

    "vcs" => [
      {
        "name" => "vc.0",
        "type" => "vcva",
        "customBuild" => "ob-17920168",
        "dcName" => ["Datacenter"],
        "enableDrs" => true,
        "clusters" => [
          {
            "name" => "Mcluster",
            "dc" => "Datacenter",
            "enableDrs" => true,
            "enableHA" => true,
            "vsan" => true
          },
          {
            "name" => "Scluster",
            "dc" => "Datacenter",
            "enableDrs" => true,
            "enableHA" => true,
            "vsan" => true
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
