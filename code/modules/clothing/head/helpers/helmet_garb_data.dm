//passing this to forward declaration to keep ties.dm clean and broad
/obj/item
	var/helmet_garb_layer = 0.03 //in case you manage to put...something...in your helmet
/obj/item/clothing/accessory/helmet/cover
	helmet_garb_layer = 0.02
/obj/item/clothing/head/headband
	helmet_garb_layer = 0.04
/obj/item/clothing/accessory/patch
	helmet_garb_layer = 0.05

/proc/setup_helmet_garb_items()
//checklist for groups, see above for layering orders on parent paths
	GLOB.allowed_helmet_items = list(
	//========================================//
	//      TOOLS (Inherit Layer 0.03)        //
	//========================================//
		/obj/item/tool/lighter/random = NO_GARB_OVERRIDE,
		/obj/item/tool/lighter/zippo = NO_GARB_OVERRIDE,
		/obj/item/storage/box/matches = NO_GARB_OVERRIDE,

	//========================================//
	// COVERS & NETTINGS (Inherit Layer 0.02) //
	//========================================//
		/obj/item/clothing/accessory/helmet/cover/netting = NO_GARB_OVERRIDE,
		/obj/item/clothing/accessory/helmet/cover/netting/desert = NO_GARB_OVERRIDE,
		/obj/item/clothing/accessory/helmet/cover/netting/jungle = NO_GARB_OVERRIDE,
		/obj/item/clothing/accessory/helmet/cover/netting/urban = NO_GARB_OVERRIDE,
		/obj/item/clothing/accessory/helmet/cover/raincover = NO_GARB_OVERRIDE,
		/obj/item/clothing/accessory/helmet/cover/raincover/desert = NO_GARB_OVERRIDE,
		/obj/item/clothing/accessory/helmet/cover/raincover/jungle = NO_GARB_OVERRIDE,
		/obj/item/clothing/accessory/helmet/cover/raincover/urban = NO_GARB_OVERRIDE,

	//========================================//
	//CARDS, SMOKES, MISC (Inherit Layer 0.03)//
	//========================================//

	//CARDS
		/obj/item/toy/deck = NO_GARB_OVERRIDE,
		/obj/item/toy/deck/uno = NO_GARB_OVERRIDE,
		/obj/item/toy/handcard = NO_GARB_OVERRIDE,
		/obj/item/toy/handcard/aceofspades = NO_GARB_OVERRIDE,
		/obj/item/toy/handcard/uno_reverse_red = NO_GARB_OVERRIDE,
		/obj/item/toy/handcard/uno_reverse_blue = NO_GARB_OVERRIDE,
		/obj/item/toy/handcard/uno_reverse_yellow = NO_GARB_OVERRIDE,
		/obj/item/toy/handcard/uno_reverse_purple = NO_GARB_OVERRIDE,

	//SMOKES
		/obj/item/storage/fancy/cigarettes/emeraldgreen = PREFIX_HELMET_GARB_OVERRIDE, // helmet_
		/obj/item/storage/fancy/cigarettes/kpack = PREFIX_HELMET_GARB_OVERRIDE, // helmet_
		/obj/item/storage/fancy/cigarettes/lucky_strikes = PREFIX_HELMET_GARB_OVERRIDE, // helmet_
		/obj/item/storage/fancy/cigarettes/wypacket = PREFIX_HELMET_GARB_OVERRIDE, // helmet_
		/obj/item/storage/fancy/cigarettes/lady_finger = PREFIX_HELMET_GARB_OVERRIDE, // helmet_
		/obj/item/storage/fancy/cigarettes/blackpack = PREFIX_HELMET_GARB_OVERRIDE, // helmet_
		/obj/item/storage/fancy/cigarettes/arcturian_ace = PREFIX_HELMET_GARB_OVERRIDE, // helmet_
		/obj/item/storage/fancy/cigarettes/lucky_strikes_4 = PREFIX_HELMET_GARB_OVERRIDE, // helmet_
		/obj/item/storage/fancy/cigarettes/spirit = PREFIX_HELMET_GARB_OVERRIDE, // helmet_
		/obj/item/storage/fancy/cigarettes/spirit/yellow = PREFIX_HELMET_GARB_OVERRIDE, // helmet_
		/obj/item/storage/fancy/cigar/matchbook = NO_GARB_OVERRIDE,
		/obj/item/clothing/mask/cigarette/cigar = NO_GARB_OVERRIDE,
		/obj/item/clothing/mask/electronic_cigarette = NO_GARB_OVERRIDE,

	//WALKMANS
		/obj/item/device/walkman = NO_GARB_OVERRIDE,
		/obj/item/device/cassette_tape/pop1 = NO_GARB_OVERRIDE,
		/obj/item/device/cassette_tape/pop2 = NO_GARB_OVERRIDE,
		/obj/item/device/cassette_tape/pop3 = NO_GARB_OVERRIDE,
		/obj/item/device/cassette_tape/pop4 = NO_GARB_OVERRIDE,
		/obj/item/device/cassette_tape/heavymetal = NO_GARB_OVERRIDE,
		/obj/item/device/cassette_tape/hairmetal = NO_GARB_OVERRIDE,
		/obj/item/device/cassette_tape/indie = NO_GARB_OVERRIDE,
		/obj/item/device/cassette_tape/hiphop = NO_GARB_OVERRIDE,
		/obj/item/device/cassette_tape/nam = NO_GARB_OVERRIDE,
		/obj/item/device/cassette_tape/ocean = NO_GARB_OVERRIDE,
		/obj/item/storage/pouch/cassette = NO_GARB_OVERRIDE,

	//PREFERENCES STUFF
		/obj/item/prop/helmetgarb/gunoil = NO_GARB_OVERRIDE,
		/obj/item/prop/helmetgarb/spent_buckshot = NO_GARB_OVERRIDE,
		/obj/item/prop/helmetgarb/spent_slug = NO_GARB_OVERRIDE,
		/obj/item/prop/helmetgarb/spent_flech = NO_GARB_OVERRIDE,
		/obj/item/prop/helmetgarb/cartridge = NO_GARB_OVERRIDE,
		/obj/item/prop/helmetgarb/prescription_bottle = NO_GARB_OVERRIDE,
		/obj/item/prop/helmetgarb/rabbitsfoot = NO_GARB_OVERRIDE,
		/obj/item/clothing/accessory/rosary = NO_GARB_OVERRIDE, // This one was already in the game for some reason, but never had an object
		/obj/item/clothing/accessory/rosary/gold = NO_GARB_OVERRIDE,
		/obj/item/prop/helmetgarb/lucky_feather = NO_GARB_OVERRIDE,
		/obj/item/prop/helmetgarb/lucky_feather/blue = NO_GARB_OVERRIDE,
		/obj/item/prop/helmetgarb/lucky_feather/purple = NO_GARB_OVERRIDE,
		/obj/item/prop/helmetgarb/lucky_feather/yellow = NO_GARB_OVERRIDE,
		/obj/item/prop/helmetgarb/trimmed_wire = NO_GARB_OVERRIDE,
		/obj/item/prop/helmetgarb/helmet_nvg = PREFIX_HELMET_GARB_OVERRIDE, // helmet_
		/obj/item/prop/helmetgarb/helmet_nvg/cosmetic = PREFIX_HELMET_GARB_OVERRIDE, // helmet_
		/obj/item/prop/helmetgarb/helmet_nvg/marsoc = PREFIX_HELMET_GARB_OVERRIDE, // helmet_
		/obj/item/prop/helmetgarb/helmet_gasmask = NO_GARB_OVERRIDE,
		/obj/item/prop/helmetgarb/bullet_pipe = NO_GARB_OVERRIDE,
		/obj/item/prop/helmetgarb/spacejam_tickets = NO_GARB_OVERRIDE,
		/obj/item/prop/helmetgarb/family_photo = NO_GARB_OVERRIDE,
		/obj/item/prop/helmetgarb/compass = NO_GARB_OVERRIDE,
		/obj/item/prop/helmetgarb/bug_spray = NO_GARB_OVERRIDE,

	//CRAYONS
		/obj/item/tool/pen = PREFIX_HELMET_GARB_OVERRIDE, // helmet_
		/obj/item/tool/pen/blue = PREFIX_HELMET_GARB_OVERRIDE, // helmet_
		/obj/item/tool/pen/red = PREFIX_HELMET_GARB_OVERRIDE, // helmet_
		/obj/item/tool/pen/multicolor/fountain = NO_GARB_OVERRIDE,
		/obj/item/tool/candle = NO_GARB_OVERRIDE,
		/obj/item/toy/crayon/red = NO_GARB_OVERRIDE,
		/obj/item/toy/crayon/orange = NO_GARB_OVERRIDE,
		/obj/item/toy/crayon/yellow = NO_GARB_OVERRIDE,
		/obj/item/toy/crayon/green = NO_GARB_OVERRIDE,
		/obj/item/toy/crayon/blue = NO_GARB_OVERRIDE,
		/obj/item/toy/crayon/purple = NO_GARB_OVERRIDE,
		/obj/item/toy/crayon/rainbow = NO_GARB_OVERRIDE,
		/obj/item/toy/crayon/pride/trans = NO_GARB_OVERRIDE,
		/obj/item/toy/crayon/pride/gay = NO_GARB_OVERRIDE,
		/obj/item/toy/crayon/pride/lesbian = NO_GARB_OVERRIDE,
		/obj/item/toy/crayon/pride/bi = NO_GARB_OVERRIDE,
		/obj/item/toy/crayon/pride/pan = NO_GARB_OVERRIDE,
		/obj/item/toy/crayon/pride/ace = NO_GARB_OVERRIDE,
		/obj/item/toy/crayon/pride/enby = NO_GARB_OVERRIDE,
		/obj/item/toy/crayon/pride/fluid = NO_GARB_OVERRIDE,

	//OTHER DOODADS
		/obj/item/paper = NO_GARB_OVERRIDE,
		/obj/item/device/flashlight/flare = NO_GARB_OVERRIDE,
		/obj/item/ammo_magazine/handful = NO_GARB_OVERRIDE,

	//========================================//
	//    FOOD & MEDS (Inherit Layer 0.03)    //
	//========================================//

	// FOOD AND SNACKS
		/obj/item/reagent_container/food/drinks/flask = NO_GARB_OVERRIDE,
		/obj/item/reagent_container/food/drinks/flask/marine = NO_GARB_OVERRIDE,
		/obj/item/reagent_container/food/snacks/eat_bar = NO_GARB_OVERRIDE,
		/obj/item/reagent_container/food/snacks/mushroompizzaslice = NO_GARB_OVERRIDE, // Fuck whoever put these under different paths for some REASON
		/obj/item/reagent_container/food/snacks/vegetablepizzaslice = NO_GARB_OVERRIDE,
		/obj/item/reagent_container/food/snacks/meatpizzaslice = NO_GARB_OVERRIDE,
		/obj/item/reagent_container/food/snacks/packaged_burrito = NO_GARB_OVERRIDE,
		/obj/item/reagent_container/food/snacks/packaged_hdogs = NO_GARB_OVERRIDE,
		/obj/item/reagent_container/food/snacks/wrapped/chunk = NO_GARB_OVERRIDE,
		/obj/item/reagent_container/food/snacks/donkpocket = NO_GARB_OVERRIDE,
		/obj/item/reagent_container/food/snacks/wrapped/booniebars = NO_GARB_OVERRIDE,
		/obj/item/reagent_container/food/snacks/wrapped/barcardine = NO_GARB_OVERRIDE,

	// MEDICAL
		/obj/item/stack/medical/bruise_pack = NO_GARB_OVERRIDE,
		/obj/item/stack/medical/ointment = NO_GARB_OVERRIDE,
		/obj/item/tool/surgery/scalpel = NO_GARB_OVERRIDE,
		/obj/item/reagent_container/hypospray/autoinjector = NO_GARB_OVERRIDE,
		/obj/item/storage/pill_bottle/packet = NO_GARB_OVERRIDE,

	//========================================//
	//    HEADBANDS (Inherit Layer 0.04)      //
	//========================================//
		/obj/item/clothing/head/headband = NO_GARB_OVERRIDE,
		/obj/item/clothing/head/headband/tan = NO_GARB_OVERRIDE,
		/obj/item/clothing/head/headband/red = NO_GARB_OVERRIDE,
		/obj/item/clothing/head/headband/brown = PREFIX_HELMET_GARB_OVERRIDE, // helmet_
		/obj/item/clothing/head/headband/gray = PREFIX_HELMET_GARB_OVERRIDE, // helmet_
		/obj/item/clothing/head/headband/intel = PREFIX_HELMET_GARB_OVERRIDE, // helmet_
		/obj/item/clothing/head/headband/squad = PREFIX_HELMET_GARB_OVERRIDE, // helmet_
		/obj/item/clothing/head/headband/rebel = PREFIX_HELMET_GARB_OVERRIDE, // helmet_

	//========================================//
	// PATCHES & FLAIRS (Inherit Layer 0.05)  //
	//========================================//

	//PATCHES
		/obj/item/prop/helmetgarb/chaplain_patch = NO_GARB_OVERRIDE,
		/obj/item/clothing/accessory/patch/uscmpatch = NO_GARB_OVERRIDE,
		/obj/item/clothing/accessory/patch/falcon = NO_GARB_OVERRIDE,
		/obj/item/clothing/accessory/patch/falcon/squad_main = NO_GARB_OVERRIDE,
		/obj/item/clothing/accessory/patch/cec_patch = NO_GARB_OVERRIDE,
		/obj/item/clothing/accessory/patch/freelancer_patch = NO_GARB_OVERRIDE,
		/obj/item/clothing/accessory/patch/merc_patch = NO_GARB_OVERRIDE,
		/obj/item/clothing/accessory/patch/devils = NO_GARB_OVERRIDE,
		/obj/item/clothing/accessory/patch/forecon = NO_GARB_OVERRIDE,
		/obj/item/clothing/accessory/patch/royal_marines = NO_GARB_OVERRIDE,
		/obj/item/clothing/accessory/patch/upp = NO_GARB_OVERRIDE,
		/obj/item/clothing/accessory/patch/upp/airborne = NO_GARB_OVERRIDE,
		/obj/item/clothing/accessory/patch/upp/naval = NO_GARB_OVERRIDE,
		/obj/item/clothing/accessory/patch/ua = NO_GARB_OVERRIDE,
		/obj/item/clothing/accessory/patch/uasquare = NO_GARB_OVERRIDE,
		/obj/item/clothing/accessory/patch/falconalt = NO_GARB_OVERRIDE,
		/obj/item/clothing/accessory/patch/twe = NO_GARB_OVERRIDE,
		/obj/item/clothing/accessory/patch/uscmlarge = NO_GARB_OVERRIDE,
		/obj/item/clothing/accessory/patch/wy = NO_GARB_OVERRIDE,
		/obj/item/clothing/accessory/patch/wysquare = NO_GARB_OVERRIDE,
		/obj/item/clothing/accessory/patch/wy_faction = NO_GARB_OVERRIDE,
		/obj/item/clothing/accessory/patch/wy_white = NO_GARB_OVERRIDE,
		/obj/item/clothing/accessory/patch/wyfury = NO_GARB_OVERRIDE,
		/obj/item/clothing/accessory/patch/upp/alt = NO_GARB_OVERRIDE,
		/obj/item/clothing/accessory/patch/medic_patch = NO_GARB_OVERRIDE,
		/obj/item/clothing/accessory/patch/clf_patch = NO_GARB_OVERRIDE,
		/obj/item/clothing/accessory/patch/hyperdyne_patch = NO_GARB_OVERRIDE,

	//FLAIRS
		/obj/item/prop/helmetgarb/flair_initech = NO_GARB_OVERRIDE,
		/obj/item/prop/helmetgarb/flair_io = NO_GARB_OVERRIDE,
		/obj/item/prop/helmetgarb/flair_peace = NO_GARB_OVERRIDE,
		/obj/item/prop/helmetgarb/flair_uscm = NO_GARB_OVERRIDE,

	//========================================//
	//      EYEWEAR (Inherit Layer 0.06)      //
	//========================================//

	// EYEWEAR
		/obj/item/clothing/glasses/mgoggles = PREFIX_HELMET_GARB_OVERRIDE, // helmet_
		/obj/item/clothing/glasses/mgoggles/v2 = PREFIX_HELMET_GARB_OVERRIDE,
		/obj/item/clothing/glasses/mgoggles/v2/prescription = PREFIX_HELMET_GARB_OVERRIDE,
		/obj/item/clothing/glasses/mgoggles/v2/blue = PREFIX_HELMET_GARB_OVERRIDE,
		/obj/item/clothing/glasses/mgoggles/v2/blue/prescription = PREFIX_HELMET_GARB_OVERRIDE,
		/obj/item/clothing/glasses/mgoggles/v2/polarized_blue = PREFIX_HELMET_GARB_OVERRIDE,
		/obj/item/clothing/glasses/mgoggles/v2/polarized_blue/prescription = PREFIX_HELMET_GARB_OVERRIDE,
		/obj/item/clothing/glasses/mgoggles/v2/polarized_orange = PREFIX_HELMET_GARB_OVERRIDE,
		/obj/item/clothing/glasses/mgoggles/v2/polarized_orange/prescription = PREFIX_HELMET_GARB_OVERRIDE,
		/obj/item/clothing/glasses/mgoggles/prescription = PREFIX_HELMET_GARB_OVERRIDE, // helmet_
		/obj/item/clothing/glasses/mgoggles/black = PREFIX_HELMET_GARB_OVERRIDE, // helmet_
		/obj/item/clothing/glasses/mgoggles/black/prescription = PREFIX_HELMET_GARB_OVERRIDE, // helmet_
		/obj/item/clothing/glasses/mgoggles/orange = PREFIX_HELMET_GARB_OVERRIDE, // helmet_
		/obj/item/clothing/glasses/mgoggles/orange/prescription = PREFIX_HELMET_GARB_OVERRIDE, // helmet_
		/obj/item/clothing/glasses/mgoggles/blue = PREFIX_HELMET_GARB_OVERRIDE, // helmet_
		/obj/item/clothing/glasses/mgoggles/blue/prescription = PREFIX_HELMET_GARB_OVERRIDE, // helmet_
		/obj/item/clothing/glasses/mgoggles/purple = PREFIX_HELMET_GARB_OVERRIDE, // helmet_
		/obj/item/clothing/glasses/mgoggles/purple/prescription = PREFIX_HELMET_GARB_OVERRIDE,
		/obj/item/clothing/glasses/mgoggles/yellow = PREFIX_HELMET_GARB_OVERRIDE,
		/obj/item/clothing/glasses/mgoggles/yellow/prescription = PREFIX_HELMET_GARB_OVERRIDE,
		/obj/item/clothing/glasses/mgoggles/red = PREFIX_HELMET_GARB_OVERRIDE,
		/obj/item/clothing/glasses/mgoggles/red/prescription = PREFIX_HELMET_GARB_OVERRIDE,
		/obj/item/clothing/glasses/sunglasses = NO_GARB_OVERRIDE,
		/obj/item/clothing/glasses/sunglasses/prescription = NO_GARB_OVERRIDE,
		/obj/item/clothing/glasses/sunglasses/aviator = NO_GARB_OVERRIDE,
		/obj/item/clothing/glasses/sunglasses/aviator/silver = NO_GARB_OVERRIDE,
		/obj/item/clothing/glasses/sunglasses/big = NO_GARB_OVERRIDE,
		/obj/item/clothing/glasses/sunglasses/big/new_bimex/black = NO_GARB_OVERRIDE,
		/obj/item/clothing/glasses/sunglasses/big/new_bimex = NO_GARB_OVERRIDE,
		/obj/item/clothing/glasses/sunglasses/big/new_bimex/bronze = NO_GARB_OVERRIDE,
		/obj/item/clothing/glasses/sunglasses/big/fake = NO_GARB_OVERRIDE,
		/obj/item/clothing/glasses/sunglasses/big/fake/red = NO_GARB_OVERRIDE,
		/obj/item/clothing/glasses/sunglasses/big/fake/orange = NO_GARB_OVERRIDE,
		/obj/item/clothing/glasses/sunglasses/big/fake/yellow = NO_GARB_OVERRIDE,
		/obj/item/clothing/glasses/sunglasses/big/fake/green = NO_GARB_OVERRIDE,
		/obj/item/clothing/glasses/sunglasses/big/fake/blue = NO_GARB_OVERRIDE,
		/obj/item/clothing/glasses/sunglasses/sechud = NO_GARB_OVERRIDE,
		/obj/item/clothing/glasses/sunglasses/sechud/blue = NO_GARB_OVERRIDE,
		/obj/item/clothing/glasses/eyepatch = NO_GARB_OVERRIDE,
		/obj/item/clothing/glasses/eyepatch/left = NO_GARB_OVERRIDE,
		/obj/item/clothing/glasses/eyepatch/white = NO_GARB_OVERRIDE,
		/obj/item/clothing/glasses/eyepatch/white/left = NO_GARB_OVERRIDE,
		/obj/item/clothing/glasses/eyepatch/green = NO_GARB_OVERRIDE,
		/obj/item/clothing/glasses/eyepatch/green/left = NO_GARB_OVERRIDE,
		/obj/item/clothing/glasses/regular/hipster = NO_GARB_OVERRIDE,
		/obj/item/clothing/glasses/regular/hippie = NO_GARB_OVERRIDE,
		/obj/item/clothing/glasses/sunglasses/hippie = NO_GARB_OVERRIDE,
		/obj/item/clothing/glasses/sunglasses/hippie/green = NO_GARB_OVERRIDE,
		/obj/item/clothing/glasses/sunglasses/hippie/sunrise = NO_GARB_OVERRIDE,
		/obj/item/clothing/glasses/sunglasses/hippie/sunset = NO_GARB_OVERRIDE,
		/obj/item/clothing/glasses/sunglasses/hippie/nightblue = NO_GARB_OVERRIDE,
		/obj/item/clothing/glasses/sunglasses/hippie/midnight = NO_GARB_OVERRIDE,
		/obj/item/clothing/glasses/sunglasses/hippie/bloodred = NO_GARB_OVERRIDE,
		/obj/item/clothing/glasses/regular = NO_GARB_OVERRIDE,
		/obj/item/clothing/glasses/mbcg = NO_GARB_OVERRIDE,
		/obj/item/clothing/glasses/mgoggles/cmb_riot_shield = NO_GARB_OVERRIDE,
		/obj/item/clothing/glasses/mgoggles/mp_riot_shield = NO_GARB_OVERRIDE,
		/obj/item/clothing/glasses/welding = NO_GARB_OVERRIDE,

	//OTHER TOP-LEVEL THINGS (FACE SHIELDS, RAIL LIGHTS, LAMARR)
		/obj/item/prop/helmetgarb/riot_shield = NO_GARB_OVERRIDE,
		/obj/item/attachable/flashlight = NO_GARB_OVERRIDE,
		/obj/item/clothing/mask/facehugger = NO_GARB_OVERRIDE,
		/obj/item/clothing/mask/facehugger/lamarr = NO_GARB_OVERRIDE,
		/obj/item/clothing/head/headset = NO_GARB_OVERRIDE
)
