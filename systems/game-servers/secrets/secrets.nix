let
  users = import ../../../modules/ssh_keys_by_group.nix {};
  systems = import ../../../modules/ssh_keys_systems.nix;
in {
  "garage.age".publicKeys = users ++ systems.game-nodes-all;

  "rsc-cdn.age".publicKeys = users ++ systems.game-nodes-all;
  # /tg/station13 main server secrets
  "tg13-dbconfig.age".publicKeys = users ++ systems.game-nodes-all;
  # The comms key in here is also used in the PR announcer
  # If you change it here change it there as well
  "tg13-comms.age".publicKeys = users ++ systems.game-nodes-all;
  "tg13-tts_secrets.age".publicKeys = users ++ systems.game-nodes-all;
  "tg13-webhooks.age".publicKeys = users ++ systems.game-nodes-all;
  "tg13-extra_config-rclone.age".publicKeys = users ++ systems.game-nodes-all;
  # TGMC Secret
  "tgmc-dbconfig.age".publicKeys = users ++ systems.game-nodes-all;
  "tgmc-tts_secrets.age".publicKeys = users ++ systems.game-nodes-all;
  "tgmc-extra_config-rclone.age".publicKeys = users ++ systems.game-nodes-all;
}
