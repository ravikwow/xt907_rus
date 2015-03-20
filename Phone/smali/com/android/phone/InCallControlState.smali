.class public Lcom/android/phone/InCallControlState;
.super Ljava/lang/Object;
.source "InCallControlState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/InCallControlState$InCallControlCategory;
    }
.end annotation


# static fields
.field private static final DBG:Z


# instance fields
.field public bluetoothEnabled:Z

.field public bluetoothIndicatorOn:Z

.field public canAddCall:Z

.field public canEndCall:Z

.field public canHold:Z

.field public canMerge:Z

.field public canMute:Z

.field public canSwap:Z

.field public dialpadEnabled:Z

.field public dialpadVisible:Z

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field public manageConferenceEnabled:Z

.field public manageConferenceVisible:Z

.field public muteIndicatorOn:Z

.field public onHold:Z

.field public speakerEnabled:Z

.field public speakerOn:Z

.field public supportsHold:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    sput-boolean v0, Lcom/android/phone/InCallControlState;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/CallManager;)V
    .locals 1
    .param p1, "inCallScreen"    # Lcom/android/phone/InCallScreen;
    .param p2, "cm"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    sget-boolean v0, Lcom/android/phone/InCallControlState;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "InCallControlState constructor..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 97
    :cond_0
    iput-object p1, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 98
    iput-object p2, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 99
    return-void
.end method

.method private dumpState(Lcom/android/phone/InCallControlState$InCallControlCategory;)V
    .locals 2
    .param p1, "category"    # Lcom/android/phone/InCallControlState$InCallControlCategory;

    .prologue
    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InCallControlState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 251
    sget-object v0, Lcom/android/phone/InCallControlState$InCallControlCategory;->BUTTON:Lcom/android/phone/InCallControlState$InCallControlCategory;

    if-ne p1, v0, :cond_1

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  canAddCall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  canEndCall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->canEndCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  canSwap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->canSwap:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  canMerge: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->canMerge:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  bluetoothEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  bluetoothIndicatorOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  speakerEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  speakerOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->speakerOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  canMute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->canMute:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  muteIndicatorOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  dialpadEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->dialpadEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  dialpadVisible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  onHold: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->onHold:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  canHold: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallControlState;->canHold:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->log(Ljava/lang/String;)V

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    sget-object v0, Lcom/android/phone/InCallControlState$InCallControlCategory;->MENU:Lcom/android/phone/InCallControlState$InCallControlCategory;

    if-ne p1, v0, :cond_0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 275
    const-string v0, "InCallControlState"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    return-void
.end method

.method private update(Lcom/android/phone/InCallControlState$InCallControlCategory;)V
    .locals 20
    .param p1, "category"    # Lcom/android/phone/InCallControlState$InCallControlCategory;

    .prologue
    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 108
    .local v4, "fgCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    .line 109
    .local v5, "fgCallState":Lcom/android/internal/telephony/Call$State;
    sget-object v18, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v18

    if-ne v5, v0, :cond_6

    const/4 v9, 0x1

    .line 110
    .local v9, "hasForegroundCallInActiveState":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v6

    .line 111
    .local v6, "hasActiveBgCall":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v7

    .line 112
    .local v7, "hasActiveFgCall":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v8

    .line 113
    .local v8, "hasActiveRingingCall":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v18

    sget-object v19, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_7

    const/16 v17, 0x1

    .line 114
    .local v17, "phoneIsInUse":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/InCallScreen;->isOtaCallInActiveState()Z

    move-result v12

    .line 115
    .local v12, "isOtaCallInActiveState":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/InCallScreen;->isOtaCallInEndState()Z

    move-result v13

    .line 116
    .local v13, "isOtaCallInEndState":Z
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v18

    if-eqz v18, :cond_8

    if-nez v12, :cond_0

    if-eqz v13, :cond_8

    :cond_0
    const/16 v16, 0x1

    .line 120
    .local v16, "otaInUse":Z
    :goto_2
    sget-object v18, Lcom/android/phone/InCallControlState$InCallControlCategory;->BUTTON:Lcom/android/phone/InCallControlState$InCallControlCategory;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_12

    .line 122
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsConferenceCallManagement(Lcom/android/internal/telephony/Phone;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 126
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    .line 127
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    move/from16 v18, v0

    if-eqz v18, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/InCallScreen;->isManageConferenceMode()Z

    move-result v18

    if-nez v18, :cond_9

    const/16 v18, 0x1

    :goto_3
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->manageConferenceEnabled:Z

    .line 136
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneUtils;->okToAddCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->canAddCall:Z

    .line 143
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->canEndCall:Z

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneUtils;->okToSwapCalls(Lcom/android/internal/telephony/CallManager;)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->canSwap:Z

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneUtils;->okToMergeCalls(Lcom/android/internal/telephony/CallManager;)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->canMerge:Z

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v18

    if-eqz v18, :cond_b

    .line 154
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnectedOrPending()Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    .line 163
    :goto_5
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->speakerOn:Z

    .line 170
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    .line 171
    .local v3, "c":Lcom/android/internal/telephony/Connection;
    const/4 v11, 0x0

    .line 172
    .local v11, "isEmergencyCall":Z
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v11

    .line 175
    :cond_1
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v10

    .line 176
    .local v10, "isECM":Z
    if-nez v11, :cond_2

    if-eqz v10, :cond_c

    .line 177
    :cond_2
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->canMute:Z

    .line 178
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    .line 186
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/InCallScreen;->okToShowDialpad()Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->dialpadEnabled:Z

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    .line 193
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsHoldAndUnhold(Lcom/android/internal/telephony/Phone;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 195
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->supportsHold:Z

    .line 199
    if-eqz v6, :cond_d

    if-nez v7, :cond_d

    const/16 v18, 0x1

    :goto_7
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->onHold:Z

    .line 202
    if-eqz v9, :cond_e

    if-nez v6, :cond_e

    if-nez v8, :cond_e

    const/4 v14, 0x1

    .line 203
    .local v14, "okToHold":Z
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/phone/InCallControlState;->onHold:Z

    .line 204
    .local v15, "okToUnhold":Z
    if-nez v14, :cond_3

    if-eqz v15, :cond_f

    :cond_3
    const/16 v18, 0x1

    :goto_9
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->canHold:Z

    .line 223
    .end local v14    # "okToHold":Z
    .end local v15    # "okToUnhold":Z
    :cond_4
    :goto_a
    sget-boolean v18, Lcom/android/phone/InCallControlState;->DBG:Z

    if-eqz v18, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallControlState;->dumpInCallButtonsState()V

    .line 246
    .end local v3    # "c":Lcom/android/internal/telephony/Connection;
    .end local v10    # "isECM":Z
    .end local v11    # "isEmergencyCall":Z
    :cond_5
    :goto_b
    return-void

    .line 109
    .end local v6    # "hasActiveBgCall":Z
    .end local v7    # "hasActiveFgCall":Z
    .end local v8    # "hasActiveRingingCall":Z
    .end local v9    # "hasForegroundCallInActiveState":Z
    .end local v12    # "isOtaCallInActiveState":Z
    .end local v13    # "isOtaCallInEndState":Z
    .end local v16    # "otaInUse":Z
    .end local v17    # "phoneIsInUse":Z
    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 113
    .restart local v6    # "hasActiveBgCall":Z
    .restart local v7    # "hasActiveFgCall":Z
    .restart local v8    # "hasActiveRingingCall":Z
    .restart local v9    # "hasForegroundCallInActiveState":Z
    :cond_7
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 116
    .restart local v12    # "isOtaCallInActiveState":Z
    .restart local v13    # "isOtaCallInEndState":Z
    .restart local v17    # "phoneIsInUse":Z
    :cond_8
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 127
    .restart local v16    # "otaInUse":Z
    :cond_9
    const/16 v18, 0x0

    goto/16 :goto_3

    .line 131
    :cond_a
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    .line 132
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->manageConferenceEnabled:Z

    goto/16 :goto_4

    .line 157
    :cond_b
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    .line 158
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    goto/16 :goto_5

    .line 180
    .restart local v3    # "c":Lcom/android/internal/telephony/Connection;
    .restart local v10    # "isECM":Z
    .restart local v11    # "isEmergencyCall":Z
    :cond_c
    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/phone/InCallControlState;->canMute:Z

    .line 181
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    goto/16 :goto_6

    .line 199
    :cond_d
    const/16 v18, 0x0

    goto :goto_7

    .line 202
    :cond_e
    const/4 v14, 0x0

    goto :goto_8

    .line 204
    .restart local v14    # "okToHold":Z
    .restart local v15    # "okToUnhold":Z
    :cond_f
    const/16 v18, 0x0

    goto :goto_9

    .line 205
    .end local v14    # "okToHold":Z
    .end local v15    # "okToUnhold":Z
    :cond_10
    if-eqz v6, :cond_11

    if-nez v7, :cond_11

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 211
    .local v2, "bgCall":Lcom/android/internal/telephony/Call;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsHoldAndUnhold(Lcom/android/internal/telephony/Phone;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 213
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->supportsHold:Z

    .line 214
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->onHold:Z

    .line 215
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->canHold:Z

    goto/16 :goto_a

    .line 219
    .end local v2    # "bgCall":Lcom/android/internal/telephony/Call;
    :cond_11
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->supportsHold:Z

    .line 220
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->onHold:Z

    .line 221
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallControlState;->canHold:Z

    goto/16 :goto_a

    .line 224
    .end local v3    # "c":Lcom/android/internal/telephony/Connection;
    .end local v10    # "isECM":Z
    .end local v11    # "isEmergencyCall":Z
    :cond_12
    sget-object v18, Lcom/android/phone/InCallControlState$InCallControlCategory;->MENU:Lcom/android/phone/InCallControlState$InCallControlCategory;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 243
    sget-boolean v18, Lcom/android/phone/InCallControlState;->DBG:Z

    if-eqz v18, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallControlState;->dumpInCallMenusState()V

    goto/16 :goto_b
.end method


# virtual methods
.method public dumpInCallButtonsState()V
    .locals 1

    .prologue
    .line 289
    sget-object v0, Lcom/android/phone/InCallControlState$InCallControlCategory;->BUTTON:Lcom/android/phone/InCallControlState$InCallControlCategory;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->dumpState(Lcom/android/phone/InCallControlState$InCallControlCategory;)V

    .line 290
    return-void
.end method

.method public dumpInCallMenusState()V
    .locals 1

    .prologue
    .line 293
    sget-object v0, Lcom/android/phone/InCallControlState$InCallControlCategory;->MENU:Lcom/android/phone/InCallControlState$InCallControlCategory;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->dumpState(Lcom/android/phone/InCallControlState$InCallControlCategory;)V

    .line 294
    return-void
.end method

.method public updateInCallButtons()V
    .locals 1

    .prologue
    .line 281
    sget-object v0, Lcom/android/phone/InCallControlState$InCallControlCategory;->BUTTON:Lcom/android/phone/InCallControlState$InCallControlCategory;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->update(Lcom/android/phone/InCallControlState$InCallControlCategory;)V

    .line 282
    return-void
.end method

.method public updateInCallMenus()V
    .locals 1

    .prologue
    .line 285
    sget-object v0, Lcom/android/phone/InCallControlState$InCallControlCategory;->MENU:Lcom/android/phone/InCallControlState$InCallControlCategory;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallControlState;->update(Lcom/android/phone/InCallControlState$InCallControlCategory;)V

    .line 286
    return-void
.end method
