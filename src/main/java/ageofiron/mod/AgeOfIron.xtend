package ageofiron.mod

import net.minecraftforge.common.MinecraftForge
import net.minecraftforge.event.world.WorldEvent
import net.minecraftforge.fml.common.Mod
import net.minecraftforge.fml.common.Mod.EventHandler
import net.minecraftforge.fml.common.event.FMLInitializationEvent
import net.minecraftforge.fml.common.event.FMLPostInitializationEvent
import net.minecraftforge.fml.common.event.FMLPreInitializationEvent
import net.minecraftforge.fml.common.eventhandler.SubscribeEvent

@Mod(modid = AgeOfIron.MODID, version = AgeOfIron.VERSION)
class AgeOfIron {
	public static val MODID = "age-of-iron"
	public static val VERSION = "1.0"
	
	new() {
		//println("\n\n\n\n\n\n\n\n\n\n Registering event Registry \n\n\n\n\n\n\n\n\n\n\\n\n\n")   
        //MinecraftForge.EVENT_BUS.register(Registry.INSTANCE)
	}
	
	@EventHandler
    def void preInit(FMLPreInitializationEvent event)
    {
     	
    }
	
	@EventHandler
    def void init(FMLInitializationEvent event)
    {
    	
    }
    
    @EventHandler
    def void postInit(FMLPostInitializationEvent event)
    {
        
    }
    
	@SubscribeEvent
	def void registerItems(WorldEvent.Load event) {
		println("\n\n\n\n\n\n\n\n\n\n Registering Block \n\n\n\n\n\n\n\n\n\n\\n\n\n")
		//event.registry.register(new Item() => [unlocalizedName = "TestItem"])
	}
}