#if defined _aps_included
	#endinput
#endif

#define _aps_included

#include <aps_consts>

forward APS_Init();
forward APS_TypeRegistered(const name[], const desc[]);
//forward APS_PunishedPlayerPost(const id, const typeId, const expired);

//native APS_RegisterType(const name[], const description[]);
//native APS_PunishPlayer(const id, const typeId, const expired, const reason[], const details[] = "", const APS_PunisherType:punisherType = APS_PunisherTypeServer, const punisherId = 0);