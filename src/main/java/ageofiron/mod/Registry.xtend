package ageofiron.mod

import net.minecraft.block.Block
import net.minecraft.block.material.Material
import net.minecraft.creativetab.CreativeTabs
import net.minecraft.item.Item
import net.minecraft.item.ItemBlock
import net.minecraftforge.event.RegistryEvent
import net.minecraftforge.event.world.WorldEvent
import net.minecraftforge.fml.common.Mod
import net.minecraftforge.fml.common.eventhandler.SubscribeEvent

@Mod.EventBusSubscriber(modid = AgeOfIron.MODID)
class Registry {
	
	public static val INSTANCE = new Registry
	
	val block = new Block(Material.ROCK) => [
			creativeTab = CreativeTabs.COMBAT
			unlocalizedName = "agitestblock"
			registryName = "agi.testblock"
		]
	
	@SubscribeEvent
	def void registerBlocks(RegistryEvent.Register<Block> event) {
		event.registry.register(block)
		println("\n\n\n\n\n\n\n\n\n\n Registering Block \n\n\n\n\n\n\n\n\n\n\\n\n\n")
	}
	
	@SubscribeEvent
	def void registerItems(RegistryEvent.Register<Item> event) {
		event.registry.register(new ItemBlock(block).setRegistryName(block.getRegistryName()) => [creativeTab = CreativeTabs.COMBAT])
	}
	
	@SubscribeEvent
	def void registerItems(WorldEvent.Load event) {
		println("\n\n\n\n\n\n\n\n\n\n World Loaded \n\n\n\n\n\n\n\n\n\n\\n\n\n")
		//event.registry.register(new Item() => [unlocalizedName = "TestItem"])
	}
	
	
}