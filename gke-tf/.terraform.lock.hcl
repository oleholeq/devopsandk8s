# This file is maintained automatically by "terraform init".
# Manual edits may be lost in future updates.

provider "registry.terraform.io/fluxcd/flux" {
  version     = "1.2.1"
  constraints = "1.2.1, ~> 1.2.1"
  hashes = [
    "h1:qRwxz7RtRMXow7wVOtBZoOUJ/UvgPIKzLqwtXtMcE14=",
    "zh:16b5cf2598fecfb09768d4e3a4164fd1578e37ae06cfc0b34610d04f5d38c6c9",
    "zh:3a0aa4fb200aa5a0014c172174d0771ea4ce827cb136f613142425a6d188e49f",
    "zh:5ec11f151b3ec97b2e3bd6356d20dc5778a29f875978662a45f2756d9c9c5aea",
    "zh:6f9e62f14c74fa057ca6d2e5d275afe7d3228a18e88a0b09f9714855835ee34c",
    "zh:86e2af06eba4f4dcb10ca12bc998eb8b1fdea94b36460594bf47f30dbe497e1a",
    "zh:87fe755457ea52eb15931f2573fdc23e4dea3b8f389666a6eb2b0d7efe35e3d2",
    "zh:8ddfae1e0ba9346434f244593026feafd8de26e0df754c1392d08662d41fee07",
    "zh:ae71f8388562ab6d4351a0033fcd41d2f0404936492ef49be6f9d25b4fc92485",
    "zh:b14d086d9ae4fb6c7eb8550b58280559a6442b90857435d63f33164fe8cd34d0",
    "zh:bcc60e879629d5a51a2ca44af5eb8a8b5f755fd84a687195f374d21bf104967c",
    "zh:c02c538551ba0a08dc3c99ec2750cb8ad238e91172379727b007e5b50a4ee4fb",
    "zh:ce5c54aa3c47136e7d157130d3046951da69bda451c17ad2303325c1de754ed6",
    "zh:e1c9f8314fdd3dd7484cf0a32d4d23c1ef55797e94bc453a32e9ce53a3951181",
    "zh:fe5ed8e0fecb40d199684cd1d220aa450f023c3ddd30eff349139d18bbe167ae",
  ]
}

provider "registry.terraform.io/hashicorp/kubernetes" {
  version     = "2.27.0"
  constraints = "~> 2.27.0"
  hashes = [
    "h1:GzU0FzYAT/+IgAhnSBcFH3bT+4I5N6oSga6iZgNJAus=",
    "zh:3bdba30ae67c55dc7e9a317ac0da3b208ea7926fe9c2f0ae6587ee88dcc58d1f",
    "zh:3f35138a831c00b188d2ffee27111dd0cf59afad2dd5653ed9e67d59646de12c",
    "zh:64066d18f6ae9a316c2bc840ef3e641d7ab94e1ea3a41d12523e77345ad442ef",
    "zh:653063d44b44881af3a480f7f8eaa94fa300e0229df2072d30f606bddcc9f025",
    "zh:87f306e37efb61d13efa6da53a1e45e97e5996ebc0568b1caf8c3c5e54c05809",
    "zh:8c428b9708f9634391e52300218771eab3fe942bb1295d8c0ad50ca4b33db3d9",
    "zh:a44e87119a0337ded15479851786a13f412b413d9a463ba550d1210249206b0f",
    "zh:aa2c4d110b0de6ef997c0d45f3f23f8a98f5530753095d6eff439a6d91a8ea31",
    "zh:eb15ed8781ac6a0dec2f7d03cf090e23cfa05e3225806c6231ff2c574662fd63",
    "zh:eb81c563f93bd3303f9620d11cd49f21f3f89ac3475c6d3e821b239feb9c217d",
    "zh:f1a344a7f16131123577e4ec994d04a34ea458ec16c1ccac53fe7946bd817b18",
    "zh:f569b65999264a9416862bca5cd2a6177d94ccb0424f3a4ef424428912b9cb3c",
  ]
}

provider "registry.terraform.io/hashicorp/tls" {
  version     = "4.0.4"
  constraints = "4.0.4"
  hashes = [
    "h1:GZcFizg5ZT2VrpwvxGBHQ/hO9r6g0vYdQqx3bFD3anY=",
    "zh:23671ed83e1fcf79745534841e10291bbf34046b27d6e68a5d0aab77206f4a55",
    "zh:45292421211ffd9e8e3eb3655677700e3c5047f71d8f7650d2ce30242335f848",
    "zh:59fedb519f4433c0fdb1d58b27c210b27415fddd0cd73c5312530b4309c088be",
    "zh:5a8eec2409a9ff7cd0758a9d818c74bcba92a240e6c5e54b99df68fff312bbd5",
    "zh:5e6a4b39f3171f53292ab88058a59e64825f2b842760a4869e64dc1dc093d1fe",
    "zh:810547d0bf9311d21c81cc306126d3547e7bd3f194fc295836acf164b9f8424e",
    "zh:824a5f3617624243bed0259d7dd37d76017097dc3193dac669be342b90b2ab48",
    "zh:9361ccc7048be5dcbc2fafe2d8216939765b3160bd52734f7a9fd917a39ecbd8",
    "zh:aa02ea625aaf672e649296bce7580f62d724268189fe9ad7c1b36bb0fa12fa60",
    "zh:c71b4cd40d6ec7815dfeefd57d88bc592c0c42f5e5858dcc88245d371b4b8b1e",
    "zh:dabcd52f36b43d250a3d71ad7abfa07b5622c69068d989e60b79b2bb4f220316",
    "zh:f569b65999264a9416862bca5cd2a6177d94ccb0424f3a4ef424428912b9cb3c",
  ]
}

provider "registry.terraform.io/integrations/github" {
  version     = "6.6.0"
  constraints = ">= 5.9.1"
  hashes = [
    "h1:P4SRG4605PvPKASeDu1lW49TTz1cCGsjQ7qbOBgNd6I=",
    "zh:0b1b5342db6a17de7c71386704e101be7d6761569e03fb3ff1f3d4c02c32d998",
    "zh:2fb663467fff76852126b58315d9a1a457e3b04bec51f04bf1c0ddc9dfbb3517",
    "zh:4183e557a1dfd413dae90ca4bac37dbbe499eae5e923567371f768053f977800",
    "zh:48b2979f88fb55cdb14b7e4c37c44e0dfbc21b7a19686ce75e339efda773c5c2",
    "zh:5d803fb06625e0bcf83abb590d4235c117fa7f4aa2168fa3d5f686c41bc529ec",
    "zh:6f1dd094cbab36363583cda837d7ca470bef5f8abf9b19f23e9cd8b927153498",
    "zh:772edb5890d72b32868f9fdc0a9a1d4f4701d8e7f8acb37a7ac530d053c776e3",
    "zh:798f443dbba6610431dcef832047f6917fb5a4e184a3a776c44e6213fb429cc6",
    "zh:cc08dfcc387e2603f6dbaff8c236c1254185450d6cadd6bad92879fe7e7dbce9",
    "zh:d5e2c8d7f50f91d6847ddce27b10b721bdfce99c1bbab42a68fa271337d73d63",
    "zh:e69a0045440c706f50f84a84ff8b1df520ec9bf757de4b8f9959f2ed20c3f440",
    "zh:efc5358573a6403cbea3a08a2fcd2407258ac083d9134c641bdcb578966d8bdf",
    "zh:f627a255e5809ec2375f79949c79417847fa56b9e9222ea7c45a463eb663f137",
    "zh:f7c02f762e4cf1de7f58bde520798491ccdd54a5bd52278d579c146d1d07d4f0",
    "zh:fbd1fee2c9df3aa19cf8851ce134dea6e45ea01cb85695c1726670c285797e25",
  ]
}

provider "registry.terraform.io/tehcyx/kind" {
  version     = "0.8.0"
  constraints = "0.8.0"
  hashes = [
    "h1:UwJjL+WkRYoFRd9a/jDX7pPGYLQiXfLSesWwU+5n9H0=",
    "zh:68994ea296bc704069a140c198155b7a6d345837f9dabd5c39bb17d957ca1ef3",
    "zh:724cb92ca5e917039da9f43d115a3b8471b007f78f904b3884c5adfe0ca9bd79",
    "zh:7d149ba9087fac3b767b4ce78a779ec77dee3cac899d5d4c3da25ace5f332d2a",
    "zh:80c5d674e3edc7c73f3ec13eb8b56be9ed5d2a52e1daf8cbe7629832819fc85a",
    "zh:d565aaa3863cb2aef1da1df8886602e6a5f630053b9e7ee05947cabd7d002674",
    "zh:f83ee5ebbbc908a9a5e5877b7d43f81eeda8287dd8ae91573a7870956031f4d9",
  ]
}
