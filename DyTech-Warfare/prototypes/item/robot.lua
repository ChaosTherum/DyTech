data:extend(
{
  {
    type = "capsule",
    name = "marauder-capsule",
    icon = "__base__/graphics/icons/destroyer-capsule.png",
    flags = {"goes-to-quickbar"},
    capsule_action =
    {
      type = "throw",
      attack_parameters =
      {
        ammo_category = "capsule",
        cooldown = 20,
        projectile_creation_distance = 0.6,
        range = 30,
        ammo_type =
        {
          category = "capsule",
          target_type = "position",
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "projectile",
              projectile = "marauder-capsule",
              starting_speed = 0.4
            }
          }
        }
      }
    },
    subgroup = "capsule",
    order = "g[marauder-capsule]",
    stack_size = 100
  },
  {
    type = "capsule",
    name = "sharpshooter-capsule",
    icon = "__base__/graphics/icons/destroyer-capsule.png",
    flags = {"goes-to-quickbar"},
    capsule_action =
    {
      type = "throw",
      attack_parameters =
      {
        ammo_category = "capsule",
        cooldown = 20,
        projectile_creation_distance = 0.6,
        range = 30,
        ammo_type =
        {
          category = "capsule",
          target_type = "position",
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "projectile",
              projectile = "sharpshooter-capsule",
              starting_speed = 0.4
            }
          }
        }
      }
    },
    subgroup = "capsule",
    order = "i[sharpshooter-capsule]",
    stack_size = 100
  },
  {
    type = "capsule",
    name = "frenzy-capsule",
    icon = "__base__/graphics/icons/destroyer-capsule.png",
    flags = {"goes-to-quickbar"},
    capsule_action =
    {
      type = "throw",
      attack_parameters =
      {
        ammo_category = "capsule",
        cooldown = 10,
        projectile_creation_distance = 0.6,
        range = 30,
        ammo_type =
        {
          category = "capsule",
          target_type = "position",
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "projectile",
              projectile = "frenzy-capsule",
              starting_speed = 0.4
            }
          }
        }
      }
    },
    subgroup = "capsule",
    order = "j[frenzy-capsule]",
    stack_size = 100
  },
}
)