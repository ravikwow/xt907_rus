.class public Lcom/android/phone/InCallTouchUi;
.super Landroid/widget/FrameLayout;
.source "InCallTouchUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/PopupMenu$OnDismissListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Lcom/motorola/android/widget/RunwayLauncher$OnTriggerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/InCallTouchUi$SmallerHitTargetTouchListener;
    }
.end annotation


# static fields
.field private static final DBG:Z


# instance fields
.field private mAddButton:Landroid/widget/Button;

.field private mApp:Lcom/android/phone/PhoneApp;

.field private mAudioButton:Landroid/widget/ToggleButton;

.field private mAudioModePopup:Landroid/widget/PopupMenu;

.field private mAudioModePopupVisible:Z

.field private mCdmaMergeButton:Landroid/view/ViewGroup;

.field private mCdmaSwapButton:Landroid/view/ViewGroup;

.field mContext:Landroid/content/Context;

.field private mDialpadButton:Landroid/widget/CompoundButton;

.field private mEndButton:Landroid/widget/ImageButton;

.field private mExtraButtonRow:Landroid/view/ViewGroup;

.field private mHoldButton:Landroid/widget/CompoundButton;

.field private mInCallControls:Landroid/view/View;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mIncomingCallWidget:Lcom/motorola/android/widget/RunwayLauncher;

.field private mIncomingcallHolder:Landroid/view/ViewGroup;

.field private mManageConferenceButton:Landroid/view/ViewGroup;

.field private mManageConferenceButtonImage:Landroid/widget/ImageButton;

.field private mMotoHandler:Landroid/os/Handler;

.field private mMuteButton:Landroid/widget/CompoundButton;

.field private mOverflowButton:Landroid/widget/Button;

.field private mSupportGsmCallWaiting:Z

.field private mUmtsMergeButton:Landroid/widget/Button;

.field private mUmtsSwapButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    sput-boolean v0, Lcom/android/phone/InCallTouchUi;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 172
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopupVisible:Z

    .line 174
    sget-boolean v0, Lcom/android/phone/InCallTouchUi;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "InCallTouchUi constructor..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 175
    :cond_0
    sget-boolean v0, Lcom/android/phone/InCallTouchUi;->DBG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 176
    :cond_1
    sget-boolean v0, Lcom/android/phone/InCallTouchUi;->DBG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- context "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", attrs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 177
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    .line 180
    iput-object p1, p0, Lcom/android/phone/InCallTouchUi;->mContext:Landroid/content/Context;

    .line 181
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mSupportGsmCallWaiting:Z

    .line 182
    new-instance v0, Lcom/android/phone/InCallTouchUi$1;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallTouchUi$1;-><init>(Lcom/android/phone/InCallTouchUi;)V

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMotoHandler:Landroid/os/Handler;

    .line 193
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 69
    sget-boolean v0, Lcom/android/phone/InCallTouchUi;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/InCallTouchUi;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/InCallTouchUi;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/InCallTouchUi;)Lcom/android/phone/PhoneApp;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/InCallTouchUi;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    return-object v0
.end method

.method private getNameFromCallerInfo(Lcom/android/phone/PhoneUtils$CallerInfoToken;)Ljava/lang/String;
    .locals 1
    .param p1, "callerInfo"    # Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .prologue
    .line 1601
    if-nez p1, :cond_0

    .line 1602
    const/4 v0, 0x0

    .line 1607
    :goto_0
    return-object v0

    .line 1604
    :cond_0
    iget-object v0, p1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1605
    iget-object v0, p1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->stripSeparatorIfNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1607
    :cond_1
    iget-object v0, p1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method private handleAudioButtonClick()V
    .locals 3

    .prologue
    .line 860
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v0

    .line 861
    .local v0, "inCallControlState":Lcom/android/phone/InCallControlState;
    iget-boolean v1, v0, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    if-eqz v1, :cond_1

    .line 862
    sget-boolean v1, Lcom/android/phone/InCallTouchUi;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "- handleAudioButtonClick: \'popup menu\' mode..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 863
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->showAudioModePopup()V

    .line 864
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/ToggleButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 869
    :goto_0
    return-void

    .line 866
    :cond_1
    sget-boolean v1, Lcom/android/phone/InCallTouchUi;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "- handleAudioButtonClick: \'speaker toggle\' mode..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 867
    :cond_2
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->toggleSpeaker()V

    goto :goto_0
.end method

.method private hideIncomingCallWidget()V
    .locals 2

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingcallHolder:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1191
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingcallHolder:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1240
    :cond_0
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1615
    const-string v0, "InCallTouchUi"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    return-void
.end method

.method private okToShowInCallControls()Z
    .locals 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showAudioModePopup()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 875
    sget-boolean v7, Lcom/android/phone/InCallTouchUi;->DBG:Z

    if-eqz v7, :cond_0

    const-string v7, "showAudioModePopup()..."

    invoke-direct {p0, v7}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 877
    :cond_0
    new-instance v7, Landroid/widget/PopupMenu;

    iget-object v10, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v11, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/ToggleButton;

    invoke-direct {v7, v10, v11}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    .line 879
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v7

    const/high16 v10, 0x7f100000

    iget-object v11, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v11}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 881
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 882
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7, p0}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 886
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v7}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v2

    .line 888
    .local v2, "inCallControlState":Lcom/android/phone/InCallControlState;
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    .line 895
    .local v3, "menu":Landroid/view/Menu;
    const v7, 0x7f0800c8

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 896
    .local v4, "speakerItem":Landroid/view/MenuItem;
    iget-boolean v7, v2, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    if-eqz v7, :cond_4

    iget-boolean v7, v2, Lcom/android/phone/InCallControlState;->speakerOn:Z

    if-nez v7, :cond_4

    move v7, v8

    :goto_0
    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 903
    const v7, 0x7f0800c9

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 904
    .local v1, "earpieceItem":Landroid/view/MenuItem;
    const v7, 0x7f0800ca

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 905
    .local v6, "wiredHeadsetItem":Landroid/view/MenuItem;
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v7}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v5

    .line 906
    .local v5, "usingHeadset":Z
    if-nez v5, :cond_5

    move v7, v8

    :goto_1
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 909
    if-nez v5, :cond_6

    iget-boolean v7, v2, Lcom/android/phone/InCallControlState;->speakerOn:Z

    if-nez v7, :cond_1

    iget-boolean v7, v2, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    if-eqz v7, :cond_6

    :cond_1
    move v7, v8

    :goto_2
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 911
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 912
    if-eqz v5, :cond_7

    iget-boolean v7, v2, Lcom/android/phone/InCallControlState;->speakerOn:Z

    if-nez v7, :cond_2

    iget-boolean v7, v2, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    if-eqz v7, :cond_7

    :cond_2
    move v7, v8

    :goto_3
    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 919
    const v7, 0x7f0800cb

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 920
    .local v0, "bluetoothItem":Landroid/view/MenuItem;
    iget-boolean v7, v2, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    if-eqz v7, :cond_3

    iget-boolean v7, v2, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    if-nez v7, :cond_3

    move v9, v8

    :cond_3
    invoke-interface {v0, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 925
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7}, Landroid/widget/PopupMenu;->show()V

    .line 930
    iput-boolean v8, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopupVisible:Z

    .line 931
    return-void

    .end local v0    # "bluetoothItem":Landroid/view/MenuItem;
    .end local v1    # "earpieceItem":Landroid/view/MenuItem;
    .end local v5    # "usingHeadset":Z
    .end local v6    # "wiredHeadsetItem":Landroid/view/MenuItem;
    :cond_4
    move v7, v9

    .line 896
    goto :goto_0

    .restart local v1    # "earpieceItem":Landroid/view/MenuItem;
    .restart local v5    # "usingHeadset":Z
    .restart local v6    # "wiredHeadsetItem":Landroid/view/MenuItem;
    :cond_5
    move v7, v9

    .line 906
    goto :goto_1

    :cond_6
    move v7, v9

    .line 909
    goto :goto_2

    :cond_7
    move v7, v9

    .line 912
    goto :goto_3
.end method

.method private showIncomingCallWidget(Lcom/android/internal/telephony/Call;)V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1249
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingcallHolder:Landroid/view/ViewGroup;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1250
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/motorola/android/widget/RunwayLauncher;

    invoke-virtual {v0}, Lcom/motorola/android/widget/RunwayLauncher;->reset()V

    .line 1263
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v0, p1}, Lcom/android/phone/RespondViaSmsManager;->allowRespondViaSmsForCall(Landroid/content/Context;Lcom/android/internal/telephony/Call;)Z

    move-result v1

    .line 1264
    sget-boolean v0, Lcom/android/phone/InCallTouchUi;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowRespondViaSms "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 1266
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 1267
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 1268
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 1269
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingcallHolder:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1272
    iget-boolean v5, p0, Lcom/android/phone/InCallTouchUi;->mSupportGsmCallWaiting:Z

    if-eqz v5, :cond_6

    if-ne v4, v8, :cond_6

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1274
    :cond_1
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/motorola/android/widget/RunwayLauncher;

    const v5, 0x7f040018

    invoke-virtual {v4, v8, v5}, Lcom/motorola/android/widget/RunwayLauncher;->setTargetLayout(II)V

    .line 1275
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/motorola/android/widget/RunwayLauncher;

    const v5, 0x7f02000f

    invoke-virtual {v4, v8, v5}, Lcom/motorola/android/widget/RunwayLauncher;->setTargetBackgroundResource(II)V

    .line 1276
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/motorola/android/widget/RunwayLauncher;

    const v5, 0x7f040017

    invoke-virtual {v4, v10, v5}, Lcom/motorola/android/widget/RunwayLauncher;->setTargetLayout(II)V

    .line 1277
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/motorola/android/widget/RunwayLauncher;

    const v5, 0x7f02000f

    invoke-virtual {v4, v10, v5}, Lcom/motorola/android/widget/RunwayLauncher;->setTargetBackgroundResource(II)V

    .line 1278
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/motorola/android/widget/RunwayLauncher;

    invoke-virtual {v4}, Lcom/motorola/android/widget/RunwayLauncher;->finishUpdateLayout()Z

    .line 1281
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1282
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v4, v2, v12, v2}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v2

    .line 1283
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/motorola/android/widget/RunwayLauncher;

    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v6, 0x7f0c0454

    new-array v7, v8, [Ljava/lang/Object;

    invoke-direct {p0, v2}, Lcom/android/phone/InCallTouchUi;->getNameFromCallerInfo(Lcom/android/phone/PhoneUtils$CallerInfoToken;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v8, v12, v2}, Lcom/motorola/android/widget/RunwayLauncher;->setTargetResources(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 1285
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v2, v3, v12, v3}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v2

    .line 1286
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/motorola/android/widget/RunwayLauncher;

    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v5, 0x7f0c0454

    new-array v6, v8, [Ljava/lang/Object;

    invoke-direct {p0, v2}, Lcom/android/phone/InCallTouchUi;->getNameFromCallerInfo(Lcom/android/phone/PhoneUtils$CallerInfoToken;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v9

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v10, v12, v2}, Lcom/motorola/android/widget/RunwayLauncher;->setTargetResources(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 1293
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/motorola/android/widget/RunwayLauncher;

    const v3, 0x7f02008a

    invoke-virtual {v2, v11, v3, v9}, Lcom/motorola/android/widget/RunwayLauncher;->setTargetResources(III)V

    .line 1294
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/motorola/android/widget/RunwayLauncher;

    const/4 v3, 0x6

    const v4, 0x7f02008c

    invoke-virtual {v2, v3, v4, v9}, Lcom/motorola/android/widget/RunwayLauncher;->setTargetResources(III)V

    .line 1297
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/motorola/android/widget/RunwayLauncher;

    const v3, 0x7f02008e

    invoke-virtual {v2, v8, v3}, Lcom/motorola/android/widget/RunwayLauncher;->setSelectedVisualResId(II)V

    .line 1298
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/motorola/android/widget/RunwayLauncher;

    const v3, 0x7f02008f

    invoke-virtual {v2, v11, v3}, Lcom/motorola/android/widget/RunwayLauncher;->setSelectedVisualResId(II)V

    .line 1299
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/motorola/android/widget/RunwayLauncher;

    const v3, 0x7f02008d

    invoke-virtual {v2, v10, v3}, Lcom/motorola/android/widget/RunwayLauncher;->setSelectedVisualResId(II)V

    .line 1300
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/motorola/android/widget/RunwayLauncher;

    const/4 v3, 0x4

    const v4, 0x7f02008d

    invoke-virtual {v2, v3, v4}, Lcom/motorola/android/widget/RunwayLauncher;->setSelectedVisualResId(II)V

    .line 1302
    if-nez v1, :cond_5

    .line 1303
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/motorola/android/widget/RunwayLauncher;

    invoke-virtual {v1, v11}, Lcom/motorola/android/widget/RunwayLauncher;->setHideRunwayTarget(I)V

    .line 1307
    :goto_1
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1308
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingcallHolder:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1395
    :goto_2
    return-void

    .line 1289
    :cond_3
    iget-object v4, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-ne v4, v8, :cond_2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1290
    :cond_4
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/motorola/android/widget/RunwayLauncher;

    const v3, 0x7f0c0452

    invoke-virtual {v2, v8, v9, v3}, Lcom/motorola/android/widget/RunwayLauncher;->setTargetResources(III)V

    .line 1291
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/motorola/android/widget/RunwayLauncher;

    const v3, 0x7f0c0453

    invoke-virtual {v2, v10, v9, v3}, Lcom/motorola/android/widget/RunwayLauncher;->setTargetResources(III)V

    goto :goto_0

    .line 1305
    :cond_5
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/motorola/android/widget/RunwayLauncher;

    invoke-virtual {v1, v9}, Lcom/motorola/android/widget/RunwayLauncher;->setHideRunwayTarget(I)V

    goto :goto_1

    .line 1312
    :cond_6
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/motorola/android/widget/RunwayLauncher;

    const v3, 0x7f040019

    invoke-virtual {v2, v8, v3}, Lcom/motorola/android/widget/RunwayLauncher;->setTargetLayout(II)V

    .line 1313
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/motorola/android/widget/RunwayLauncher;

    invoke-virtual {v2, v8, v9}, Lcom/motorola/android/widget/RunwayLauncher;->setTargetBackgroundResource(II)V

    .line 1314
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/motorola/android/widget/RunwayLauncher;

    invoke-virtual {v2}, Lcom/motorola/android/widget/RunwayLauncher;->finishUpdateLayout()Z

    .line 1315
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/motorola/android/widget/RunwayLauncher;

    const v3, 0x7f020087

    invoke-virtual {v2, v11, v3, v9}, Lcom/motorola/android/widget/RunwayLauncher;->setTargetResources(III)V

    .line 1316
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/motorola/android/widget/RunwayLauncher;

    const/4 v3, 0x6

    const v4, 0x7f02008b

    invoke-virtual {v2, v3, v4, v9}, Lcom/motorola/android/widget/RunwayLauncher;->setTargetResources(III)V

    .line 1318
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/motorola/android/widget/RunwayLauncher;

    const v3, 0x7f02008e

    invoke-virtual {v2, v8, v3}, Lcom/motorola/android/widget/RunwayLauncher;->setSelectedVisualResId(II)V

    .line 1319
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/motorola/android/widget/RunwayLauncher;

    const v3, 0x7f02008d

    invoke-virtual {v2, v11, v3}, Lcom/motorola/android/widget/RunwayLauncher;->setSelectedVisualResId(II)V

    .line 1320
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/motorola/android/widget/RunwayLauncher;

    const v3, 0x7f02008f

    invoke-virtual {v2, v10, v3}, Lcom/motorola/android/widget/RunwayLauncher;->setSelectedVisualResId(II)V

    .line 1322
    if-nez v1, :cond_7

    .line 1323
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/motorola/android/widget/RunwayLauncher;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/motorola/android/widget/RunwayLauncher;->setHideRunwayTarget(I)V

    .line 1327
    :goto_3
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1328
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingcallHolder:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 1325
    :cond_7
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/motorola/android/widget/RunwayLauncher;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/motorola/android/widget/RunwayLauncher;->setHideRunwayTarget(I)V

    goto :goto_3
.end method

.method private updateAudioButton(Lcom/android/phone/InCallControlState;)V
    .locals 13
    .param p1, "inCallControlState"    # Lcom/android/phone/InCallControlState;

    .prologue
    .line 745
    sget-boolean v11, Lcom/android/phone/InCallTouchUi;->DBG:Z

    if-eqz v11, :cond_0

    const-string v11, "updateAudioButton()..."

    invoke-direct {p0, v11}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 752
    :cond_0
    const/4 v8, 0x0

    .line 755
    .local v8, "showMoreIndicator":Z
    const/4 v9, 0x0

    .line 756
    .local v9, "showSpeakerIcon":Z
    const/4 v7, 0x0

    .line 757
    .local v7, "showHandsetIcon":Z
    const/4 v6, 0x0

    .line 758
    .local v6, "showBluetoothIcon":Z
    const v2, 0x7f0c0299

    .line 759
    .local v2, "audioButtonText":I
    const/4 v4, 0x0

    .line 761
    .local v4, "isNeedSetChecked":Z
    iget-boolean v11, p1, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    if-eqz v11, :cond_5

    .line 762
    sget-boolean v11, Lcom/android/phone/InCallTouchUi;->DBG:Z

    if-eqz v11, :cond_1

    const-string v11, "- updateAudioButton: \'popup menu action button\' mode..."

    invoke-direct {p0, v11}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 764
    :cond_1
    iget-object v11, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/ToggleButton;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 767
    const/4 v4, 0x0

    .line 774
    const/4 v8, 0x1

    .line 775
    iget-boolean v11, p1, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    if-eqz v11, :cond_3

    .line 776
    const/4 v6, 0x1

    .line 777
    const v2, 0x7f0c029b

    .line 815
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 816
    .local v10, "text":Ljava/lang/CharSequence;
    iget-object v11, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/ToggleButton;

    invoke-virtual {v11, v10}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 817
    iget-object v11, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/ToggleButton;

    invoke-virtual {v11, v10}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 818
    iget-object v11, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/ToggleButton;

    invoke-virtual {v11, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 824
    const/4 v0, 0x0

    .line 825
    .local v0, "HIDDEN":I
    const/16 v1, 0xff

    .line 829
    .local v1, "VISIBLE":I
    iget-object v11, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/ToggleButton;

    invoke-virtual {v11}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 830
    .local v3, "dr":[Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_2

    const/4 v11, 0x1

    aget-object v11, v3, v11

    if-nez v11, :cond_9

    .line 850
    :cond_2
    :goto_1
    return-void

    .line 778
    .end local v0    # "HIDDEN":I
    .end local v1    # "VISIBLE":I
    .end local v3    # "dr":[Landroid/graphics/drawable/Drawable;
    .end local v10    # "text":Ljava/lang/CharSequence;
    :cond_3
    iget-boolean v11, p1, Lcom/android/phone/InCallControlState;->speakerOn:Z

    if-eqz v11, :cond_4

    .line 780
    const/4 v9, 0x1

    .line 781
    const v2, 0x7f0c0299

    goto :goto_0

    .line 783
    :cond_4
    const/4 v7, 0x1

    .line 784
    const v2, 0x7f0c02a2

    goto :goto_0

    .line 790
    :cond_5
    iget-boolean v11, p1, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    if-eqz v11, :cond_7

    .line 791
    sget-boolean v11, Lcom/android/phone/InCallTouchUi;->DBG:Z

    if-eqz v11, :cond_6

    const-string v11, "- updateAudioButton: \'speaker toggle\' mode..."

    invoke-direct {p0, v11}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 793
    :cond_6
    iget-object v11, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/ToggleButton;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 797
    iget-boolean v4, p1, Lcom/android/phone/InCallControlState;->speakerOn:Z

    .line 801
    const/4 v9, 0x1

    .line 802
    const v2, 0x7f0c0299

    goto :goto_0

    .line 804
    :cond_7
    sget-boolean v11, Lcom/android/phone/InCallTouchUi;->DBG:Z

    if-eqz v11, :cond_8

    const-string v11, "- updateAudioButton: disabled..."

    invoke-direct {p0, v11}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 808
    :cond_8
    iget-object v11, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/ToggleButton;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 809
    const/4 v4, 0x0

    .line 812
    const/4 v9, 0x1

    goto :goto_0

    .line 833
    .restart local v0    # "HIDDEN":I
    .restart local v1    # "VISIBLE":I
    .restart local v3    # "dr":[Landroid/graphics/drawable/Drawable;
    .restart local v10    # "text":Ljava/lang/CharSequence;
    :cond_9
    const/4 v11, 0x1

    aget-object v5, v3, v11

    check-cast v5, Landroid/graphics/drawable/LayerDrawable;

    .line 837
    .local v5, "layers":Landroid/graphics/drawable/LayerDrawable;
    sget-boolean v11, Lcom/android/phone/InCallTouchUi;->DBG:Z

    if-eqz v11, :cond_a

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "- \'layers\' drawable: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 839
    :cond_a
    const v11, 0x7f0800c4

    invoke-virtual {v5, v11}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz v8, :cond_b

    const/16 v11, 0xff

    :goto_2
    invoke-virtual {v12, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 842
    const v11, 0x7f0800c5

    invoke-virtual {v5, v11}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz v6, :cond_c

    const/16 v11, 0xff

    :goto_3
    invoke-virtual {v12, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 845
    const v11, 0x7f0800c6

    invoke-virtual {v5, v11}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz v7, :cond_d

    const/16 v11, 0xff

    :goto_4
    invoke-virtual {v12, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 848
    const v11, 0x7f0800c7

    invoke-virtual {v5, v11}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz v9, :cond_e

    const/16 v11, 0xff

    :goto_5
    invoke-virtual {v12, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/16 :goto_1

    .line 839
    :cond_b
    const/4 v11, 0x0

    goto :goto_2

    .line 842
    :cond_c
    const/4 v11, 0x0

    goto :goto_3

    .line 845
    :cond_d
    const/4 v11, 0x0

    goto :goto_4

    .line 848
    :cond_e
    const/4 v11, 0x0

    goto :goto_5
.end method


# virtual methods
.method public dismissAudioModePopup()V
    .locals 1

    .prologue
    .line 940
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 941
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 942
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    .line 943
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopupVisible:Z

    .line 945
    :cond_0
    return-void
.end method

.method public getTouchUiHeight()I
    .locals 3

    .prologue
    .line 1035
    const/4 v0, 0x0

    .line 1038
    .local v0, "height":I
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 1041
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 1047
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 1049
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 453
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 454
    .local v0, "id":I
    sget-boolean v1, Lcom/android/phone/InCallTouchUi;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick(View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 456
    :cond_0
    sparse-switch v0, :sswitch_data_0

    .line 479
    const-string v1, "InCallTouchUi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick: unexpected click: View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :goto_0
    return-void

    .line 471
    :sswitch_0
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v0}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 475
    :sswitch_1
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->handleAudioButtonClick()V

    goto :goto_0

    .line 456
    :sswitch_data_0
    .sparse-switch
        0x7f080050 -> :sswitch_0
        0x7f080053 -> :sswitch_0
        0x7f080063 -> :sswitch_0
        0x7f080066 -> :sswitch_0
        0x7f080067 -> :sswitch_0
        0x7f080068 -> :sswitch_1
        0x7f080069 -> :sswitch_0
        0x7f08006a -> :sswitch_0
        0x7f08006b -> :sswitch_0
        0x7f08006c -> :sswitch_0
        0x7f08006d -> :sswitch_0
        0x7f08006e -> :sswitch_0
    .end sparse-switch
.end method

.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 2
    .param p1, "menu"    # Landroid/widget/PopupMenu;

    .prologue
    .line 1008
    sget-boolean v0, Lcom/android/phone/InCallTouchUi;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- onDismiss: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 1009
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopupVisible:Z

    .line 1010
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    const v5, 0x7f080084

    .line 201
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 202
    sget-boolean v2, Lcom/android/phone/InCallTouchUi;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InCallTouchUi onFinishInflate(this = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 212
    :cond_0
    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/motorola/android/widget/RunwayLauncher;

    iput-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/motorola/android/widget/RunwayLauncher;

    .line 213
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/motorola/android/widget/RunwayLauncher;

    sget-object v3, Lcom/android/phone/R$styleable;->RunwayLauncher:[I

    invoke-virtual {v2, v3}, Lcom/motorola/android/widget/RunwayLauncher;->setWidgetAttribute([I)V

    .line 214
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/motorola/android/widget/RunwayLauncher;

    sget-object v3, Lcom/android/phone/R$styleable;->RunwayLauncher_Layout:[I

    invoke-virtual {v2, v3}, Lcom/motorola/android/widget/RunwayLauncher;->setWidgetLayoutAttribute([I)V

    .line 215
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/motorola/android/widget/RunwayLauncher;

    invoke-virtual {v2, p0}, Lcom/motorola/android/widget/RunwayLauncher;->setOnTriggerListener(Lcom/motorola/android/widget/RunwayLauncher$OnTriggerListener;)V

    .line 216
    const v2, 0x7f08006f

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingcallHolder:Landroid/view/ViewGroup;

    .line 217
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingcallHolder:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 219
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 220
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f04001c

    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mIncomingcallHolder:Landroid/view/ViewGroup;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 222
    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/motorola/android/widget/RunwayLauncher;

    iput-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/motorola/android/widget/RunwayLauncher;

    .line 223
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/motorola/android/widget/RunwayLauncher;

    invoke-virtual {v2, p0}, Lcom/motorola/android/widget/RunwayLauncher;->setOnTriggerListener(Lcom/motorola/android/widget/RunwayLauncher$OnTriggerListener;)V

    .line 228
    const v2, 0x7f080061

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    .line 233
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v3, 0x7f08006a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    .line 234
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 236
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v3, 0x7f08006b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/InCallTouchUi;->mUmtsMergeButton:Landroid/widget/Button;

    .line 237
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mUmtsMergeButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v3, 0x7f08006d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/InCallTouchUi;->mUmtsSwapButton:Landroid/widget/Button;

    .line 240
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mUmtsSwapButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v3, 0x7f08006e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/InCallTouchUi;->mOverflowButton:Landroid/widget/Button;

    .line 242
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mOverflowButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v3, 0x7f080063

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/phone/InCallTouchUi;->mCdmaSwapButton:Landroid/view/ViewGroup;

    .line 244
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mCdmaSwapButton:Landroid/view/ViewGroup;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v3, 0x7f080066

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/phone/InCallTouchUi;->mEndButton:Landroid/widget/ImageButton;

    .line 247
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mEndButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v3, 0x7f080067

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CompoundButton;

    iput-object v2, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    .line 249
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 251
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v3, 0x7f080069

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CompoundButton;

    iput-object v2, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/CompoundButton;

    .line 252
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/CompoundButton;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/CompoundButton;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 254
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v3, 0x7f080068

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    iput-object v2, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/ToggleButton;

    .line 255
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 257
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v3, 0x7f08006c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CompoundButton;

    iput-object v2, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    .line 258
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 280
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v3, 0x7f080062

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/phone/InCallTouchUi;->mExtraButtonRow:Landroid/view/ViewGroup;

    .line 284
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v3, 0x7f080053

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/phone/InCallTouchUi;->mCdmaMergeButton:Landroid/view/ViewGroup;

    .line 285
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mCdmaMergeButton:Landroid/view/ViewGroup;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v3, 0x7f080050

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/phone/InCallTouchUi;->mManageConferenceButton:Landroid/view/ViewGroup;

    .line 288
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mManageConferenceButton:Landroid/view/ViewGroup;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v3, 0x7f080051

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/phone/InCallTouchUi;->mManageConferenceButtonImage:Landroid/widget/ImageButton;

    .line 293
    new-instance v1, Lcom/android/phone/InCallTouchUi$SmallerHitTargetTouchListener;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallTouchUi$SmallerHitTargetTouchListener;-><init>(Lcom/android/phone/InCallTouchUi;)V

    .line 294
    .local v1, "smallerHitTargetTouchListener":Landroid/view/View$OnTouchListener;
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mEndButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 295
    return-void
.end method

.method public onGrabbed(Landroid/view/View;I)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "handle"    # I

    .prologue
    .line 1060
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "grabbedState"    # I

    .prologue
    .line 1433
    return-void
.end method

.method public onIncomingRing()V
    .locals 0

    .prologue
    .line 1447
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 486
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 487
    .local v2, "id":I
    sget-boolean v4, Lcom/android/phone/InCallTouchUi;->DBG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onLongClick(View "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 489
    :cond_0
    packed-switch v2, :pswitch_data_0

    .line 511
    :pswitch_0
    const-string v4, "InCallTouchUi"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onLongClick() with unexpected View "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Ignoring it."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :goto_0
    return v3

    .line 498
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    .line 499
    .local v1, "description":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 502
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 504
    .local v0, "cheatSheet":Landroid/widget/Toast;
    const/16 v4, 0x51

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v0, v4, v3, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 506
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 508
    .end local v0    # "cheatSheet":Landroid/widget/Toast;
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 489
    nop

    :pswitch_data_0
    .packed-switch 0x7f080067
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 968
    sget-boolean v0, Lcom/android/phone/InCallTouchUi;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- onMenuItemClick: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 969
    :cond_0
    sget-boolean v0, Lcom/android/phone/InCallTouchUi;->DBG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 970
    :cond_1
    sget-boolean v0, Lcom/android/phone/InCallTouchUi;->DBG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  title: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 972
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v0, :cond_3

    .line 973
    const-string v0, "InCallTouchUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMenuItemClick("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), but null mInCallScreen!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    :goto_0
    return v3

    .line 977
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 994
    const-string v0, "InCallTouchUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMenuItemClick:  unexpected View ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (MenuItem = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 979
    :pswitch_0
    const-string v0, "speaker item is clicked"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 980
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallAudioMode;->SPEAKER:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    goto :goto_0

    .line 986
    :pswitch_1
    const-string v0, "earpiece/hs item is clicked"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 987
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallAudioMode;->EARPIECE:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    goto :goto_0

    .line 990
    :pswitch_2
    const-string v0, "bluetooth item is clicked"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 991
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallAudioMode;->BLUETOOTH:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    goto :goto_0

    .line 977
    nop

    :pswitch_data_0
    .packed-switch 0x7f0800c8
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 8

    .prologue
    const v7, 0x7f08000a

    const-wide/16 v5, 0x708

    const/4 v4, 0x1

    .line 1075
    sget-boolean v0, Lcom/android/phone/InCallTouchUi;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTrigger(whichHandle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 1077
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v0, :cond_1

    .line 1078
    const-string v0, "InCallTouchUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTrigger("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") from incoming-call widget, but null mInCallScreen!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    :goto_0
    return-void

    .line 1084
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1085
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 1086
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 1097
    packed-switch p2, :pswitch_data_0

    .line 1164
    const-string v0, "InCallTouchUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDialTrigger: unexpected whichHandle value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->hideIncomingCallWidget()V

    goto :goto_0

    .line 1101
    :pswitch_0
    iget-boolean v3, p0, Lcom/android/phone/InCallTouchUi;->mSupportGsmCallWaiting:Z

    if-eqz v3, :cond_4

    if-ne v2, v4, :cond_4

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1102
    :cond_3
    const-string v0, "SEND_SMS_ID!"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 1103
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v7}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_1

    .line 1105
    :cond_4
    const-string v0, "ANSWER_CALL_ID: answer!"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 1106
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f080008

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    .line 1108
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMotoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1109
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMotoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 1119
    :pswitch_1
    iget-boolean v3, p0, Lcom/android/phone/InCallTouchUi;->mSupportGsmCallWaiting:Z

    if-eqz v3, :cond_8

    if-ne v2, v4, :cond_8

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1120
    :cond_5
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mMotoHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1121
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mMotoHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1123
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1124
    const-string v0, "End Active + Answer!"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 1125
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f08000b

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_1

    .line 1126
    :cond_6
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1127
    :cond_7
    const-string v0, "Hold Current + Answer!"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 1128
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f08000d

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto/16 :goto_1

    .line 1131
    :cond_8
    const-string v0, "SEND_SMS_ID!"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 1132
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v7}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto/16 :goto_1

    .line 1138
    :pswitch_2
    const-string v0, "DECLINE_CALL_ID: reject!"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 1139
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f080009

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    .line 1140
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMotoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1141
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMotoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 1148
    :pswitch_3
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-ne v2, v4, :cond_9

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1149
    const-string v0, "End Hold + Answer!"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 1150
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMotoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1151
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMotoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1153
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f08000c

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto/16 :goto_1

    .line 1154
    :cond_9
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-ne v2, v4, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1155
    :cond_a
    const-string v0, "End Current + Answer!"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 1156
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMotoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1157
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMotoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1159
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f08000e

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto/16 :goto_1

    .line 1097
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public refreshAudioModePopup()V
    .locals 1

    .prologue
    .line 957
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopupVisible:Z

    if-eqz v0, :cond_0

    .line 959
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 961
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->showAudioModePopup()V

    .line 963
    :cond_0
    return-void
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .param p1, "inCallScreen"    # Lcom/android/phone/InCallScreen;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 197
    return-void
.end method

.method updateInCallControls(Lcom/android/internal/telephony/CallManager;)V
    .locals 10
    .param p1, "cm"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    const/4 v7, 0x3

    const/4 v9, 0x2

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/16 v8, 0x8

    .line 522
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 536
    .local v1, "phoneType":I
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v6}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v0

    .line 540
    .local v0, "inCallControlState":Lcom/android/phone/InCallControlState;
    const/4 v4, 0x0

    .line 543
    .local v4, "showExtraButtonRow":Z
    iget-boolean v6, v0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    if-eqz v6, :cond_4

    .line 544
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 545
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 547
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mUmtsMergeButton:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 574
    :goto_0
    iget-boolean v6, v0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    if-eqz v6, :cond_1

    iget-boolean v6, v0, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v6, :cond_1

    .line 575
    if-eq v1, v3, :cond_0

    if-ne v1, v7, :cond_9

    .line 582
    :cond_0
    const-string v6, "InCallTouchUi"

    const-string v7, "updateInCallControls: Add *and* Merge enabled, but can\'t show both!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mEndButton:Landroid/widget/ImageButton;

    iget-boolean v7, v0, Lcom/android/phone/InCallControlState;->canEndCall:Z

    invoke-virtual {v6, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 598
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    iget-boolean v7, v0, Lcom/android/phone/InCallControlState;->dialpadEnabled:Z

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 599
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    iget-boolean v7, v0, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    invoke-virtual {v6, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 602
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/CompoundButton;

    iget-boolean v7, v0, Lcom/android/phone/InCallControlState;->canMute:Z

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 603
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/CompoundButton;

    iget-boolean v7, v0, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    invoke-virtual {v6, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 606
    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->updateAudioButton(Lcom/android/phone/InCallControlState;)V

    .line 614
    if-ne v1, v9, :cond_b

    .line 615
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 616
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mUmtsSwapButton:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 649
    :goto_2
    iget-boolean v6, v0, Lcom/android/phone/InCallControlState;->canSwap:Z

    if-eqz v6, :cond_2

    iget-boolean v6, v0, Lcom/android/phone/InCallControlState;->canHold:Z

    if-eqz v6, :cond_2

    .line 655
    const-string v6, "InCallTouchUi"

    const-string v7, "updateInCallControls: Hold *and* Swap enabled, but can\'t show both!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :cond_2
    if-ne v1, v9, :cond_f

    iget-boolean v6, v0, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v6, :cond_f

    move v2, v3

    .line 663
    .local v2, "showCdmaMerge":Z
    :goto_3
    if-eqz v2, :cond_10

    .line 664
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mCdmaMergeButton:Landroid/view/ViewGroup;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 665
    const/4 v4, 0x1

    .line 671
    :goto_4
    if-ne v1, v9, :cond_11

    iget-boolean v6, v0, Lcom/android/phone/InCallControlState;->canSwap:Z

    if-eqz v6, :cond_11

    .line 673
    .local v3, "showCdmaSwap":Z
    :goto_5
    if-eqz v3, :cond_12

    .line 674
    const/4 v4, 0x1

    .line 675
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mCdmaSwapButton:Landroid/view/ViewGroup;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 680
    :goto_6
    if-ne v1, v9, :cond_3

    .line 681
    iget-boolean v6, v0, Lcom/android/phone/InCallControlState;->canSwap:Z

    if-eqz v6, :cond_3

    iget-boolean v6, v0, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v6, :cond_3

    .line 687
    const-string v6, "InCallTouchUi"

    const-string v7, "updateInCallControls: Merge *and* Swapenabled, but can\'t show both!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :cond_3
    iget-boolean v6, v0, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    if-eqz v6, :cond_13

    .line 695
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mManageConferenceButton:Landroid/view/ViewGroup;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 696
    const/4 v4, 0x1

    .line 697
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mManageConferenceButtonImage:Landroid/widget/ImageButton;

    iget-boolean v7, v0, Lcom/android/phone/InCallControlState;->manageConferenceEnabled:Z

    invoke-virtual {v6, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 705
    :goto_7
    if-eqz v4, :cond_14

    iget-boolean v6, v0, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    if-nez v6, :cond_14

    .line 706
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mExtraButtonRow:Landroid/view/ViewGroup;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 712
    :goto_8
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v6}, Lcom/android/phone/InCallScreen;->isShowOverflowButton()Z

    move-result v6

    if-eqz v6, :cond_16

    .line 713
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mOverflowButton:Landroid/widget/Button;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 714
    if-ne v1, v9, :cond_15

    .line 728
    :goto_9
    return-void

    .line 548
    .end local v2    # "showCdmaMerge":Z
    .end local v3    # "showCdmaSwap":Z
    :cond_4
    iget-boolean v6, v0, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v6, :cond_8

    .line 549
    if-ne v1, v9, :cond_5

    .line 553
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mUmtsMergeButton:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 554
    :cond_5
    if-eq v1, v3, :cond_6

    if-ne v1, v7, :cond_7

    .line 556
    :cond_6
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mUmtsMergeButton:Landroid/widget/Button;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 557
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mUmtsMergeButton:Landroid/widget/Button;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 558
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 560
    :cond_7
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected phone type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 570
    :cond_8
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 571
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 572
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mUmtsMergeButton:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 584
    :cond_9
    if-ne v1, v9, :cond_a

    .line 587
    sget-boolean v6, Lcom/android/phone/InCallTouchUi;->DBG:Z

    if-eqz v6, :cond_1

    const-string v6, "updateInCallControls: CDMA: Add and Merge both enabled"

    invoke-direct {p0, v6}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 589
    :cond_a
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected phone type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 618
    :cond_b
    iget-boolean v6, v0, Lcom/android/phone/InCallControlState;->canHold:Z

    if-eqz v6, :cond_c

    .line 619
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 620
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 621
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    iget-boolean v7, v0, Lcom/android/phone/InCallControlState;->onHold:Z

    invoke-virtual {v6, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 622
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mUmtsSwapButton:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 623
    :cond_c
    iget-boolean v6, v0, Lcom/android/phone/InCallControlState;->canSwap:Z

    if-eqz v6, :cond_d

    .line 624
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mUmtsSwapButton:Landroid/widget/Button;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 625
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mUmtsSwapButton:Landroid/widget/Button;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 626
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 638
    :cond_d
    iget-boolean v6, v0, Lcom/android/phone/InCallControlState;->supportsHold:Z

    if-eqz v6, :cond_e

    .line 639
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 640
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 641
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v6, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 642
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mUmtsSwapButton:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 644
    :cond_e
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 645
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mUmtsSwapButton:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_f
    move v2, v5

    .line 661
    goto/16 :goto_3

    .line 667
    .restart local v2    # "showCdmaMerge":Z
    :cond_10
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mCdmaMergeButton:Landroid/view/ViewGroup;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    :cond_11
    move v3, v5

    .line 671
    goto/16 :goto_5

    .line 677
    .restart local v3    # "showCdmaSwap":Z
    :cond_12
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mCdmaSwapButton:Landroid/view/ViewGroup;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 699
    :cond_13
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mManageConferenceButton:Landroid/view/ViewGroup;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 708
    :cond_14
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mExtraButtonRow:Landroid/view/ViewGroup;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    .line 721
    :cond_15
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mUmtsSwapButton:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 722
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    .line 725
    :cond_16
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mOverflowButton:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;)V
    .locals 9
    .param p1, "cm"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 302
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v5, :cond_1

    .line 303
    const-string v5, "- updateState: mInCallScreen has been destroyed; bailing out..."

    invoke-direct {p0, v5}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    .line 308
    .local v4, "state":Lcom/android/internal/telephony/Phone$State;
    sget-boolean v5, Lcom/android/phone/InCallTouchUi;->DBG:Z

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateState: current state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 310
    :cond_2
    const/4 v3, 0x0

    .line 311
    .local v3, "showIncomingCallControls":Z
    const/4 v2, 0x0

    .line 313
    .local v2, "showInCallControls":Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 314
    .local v1, "ringingCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 321
    .local v0, "fgCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_6

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v5

    if-nez v5, :cond_6

    .line 329
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 330
    sget-boolean v5, Lcom/android/phone/InCallTouchUi;->DBG:Z

    if-eqz v5, :cond_3

    const-string v5, "- updateState: RINGING!  Showing incoming call controls..."

    invoke-direct {p0, v5}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 331
    :cond_3
    const/4 v3, 0x1

    .line 347
    :cond_4
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mMotoHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 349
    const-string v5, "updateState: Too soon after last action; not drawing!"

    invoke-direct {p0, v5}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 350
    const/4 v3, 0x0

    .line 365
    :cond_5
    :goto_1
    if-eqz v3, :cond_8

    if-eqz v2, :cond_8

    .line 366
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "\'Incoming\' and \'in-call\' touch controls visible at the same time!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 354
    :cond_6
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->okToShowInCallControls()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 355
    const/4 v2, 0x1

    goto :goto_1

    .line 357
    :cond_7
    sget-boolean v5, Lcom/android/phone/InCallTouchUi;->DBG:Z

    if-eqz v5, :cond_5

    const-string v5, "- updateState: NOT OK to show touch UI; disabling..."

    invoke-direct {p0, v5}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 383
    :cond_8
    if-eqz v2, :cond_c

    .line 384
    sget-boolean v5, Lcom/android/phone/InCallTouchUi;->DBG:Z

    if-eqz v5, :cond_9

    const-string v5, "- updateState: showing in-call controls..."

    invoke-direct {p0, v5}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 385
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/phone/InCallTouchUi;->updateInCallControls(Lcom/android/internal/telephony/CallManager;)V

    .line 386
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 392
    :goto_2
    if-eqz v3, :cond_e

    .line 393
    sget-boolean v5, Lcom/android/phone/InCallTouchUi;->DBG:Z

    if-eqz v5, :cond_a

    const-string v5, "- updateState: showing incoming call widget..."

    invoke-direct {p0, v5}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 394
    :cond_a
    invoke-direct {p0, v1}, Lcom/android/phone/InCallTouchUi;->showIncomingCallWidget(Lcom/android/internal/telephony/Call;)V

    .line 403
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v5, v5, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v5, v7}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableSystemBarNavigation(Z)V

    .line 421
    :goto_3
    sget-object v5, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v5, :cond_b

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v5, :cond_0

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v5, :cond_0

    .line 428
    :cond_b
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->dismissAudioModePopup()V

    goto/16 :goto_0

    .line 388
    :cond_c
    sget-boolean v5, Lcom/android/phone/InCallTouchUi;->DBG:Z

    if-eqz v5, :cond_d

    const-string v5, "- updateState: HIDING in-call controls..."

    invoke-direct {p0, v5}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 389
    :cond_d
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 405
    :cond_e
    sget-boolean v5, Lcom/android/phone/InCallTouchUi;->DBG:Z

    if-eqz v5, :cond_f

    const-string v5, "- updateState: HIDING incoming call widget..."

    invoke-direct {p0, v5}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 406
    :cond_f
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->hideIncomingCallWidget()V

    .line 410
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v5, v5, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v5, v8}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableSystemBarNavigation(Z)V

    goto :goto_3
.end method
