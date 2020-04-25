#include <amxmodx>
#include <aps>

new APS_Type:TypeId;

public plugin_init() {
	register_plugin("[APS] Chat VTC ReAPI", APS_VERSION_STR, "GM-X Team");

	if (!has_vtc()) {
		set_fail_state("[APS] VoiceTranscoder not found");
	}
}

public APS_Inited() {
	TypeId = APS_GetTypeIndex("voice_chat");
	if (TypeId == APS_InvalidType) {
		set_fail_state("[APS] Type voice_chat not registered");
	}
}

public APS_PlayerPunished(const id, const APS_Type:type) {
	if (type == TypeId) {
		VTC_MuteClient(id);
	}
}

public APS_PlayerAmnestying(const id, const APS_Type:type) {
	if (type == TypeId) {
		VTC_UnmuteClient(id);
	}
}
