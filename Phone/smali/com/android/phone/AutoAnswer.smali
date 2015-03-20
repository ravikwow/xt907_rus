.class public Lcom/android/phone/AutoAnswer;
.super Landroid/os/Handler;
.source "AutoAnswer.java"


# static fields
.field private static final DBG:Z

.field private static final VDBG:Z


# instance fields
.field private mApp:Lcom/android/phone/PhoneApp;

.field private mAutoAnswerFlag:Z

.field private mAutoAnswerRunnable:Ljava/lang/Runnable;

.field private mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mIncoming:Lcom/android/internal/telephony/Connection;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    sput-boolean v0, Lcom/android/phone/AutoAnswer;->DBG:Z

    .line 37
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    sput-boolean v0, Lcom/android/phone/AutoAnswer;->VDBG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 6
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 56
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 228
    new-instance v2, Lcom/android/phone/AutoAnswer$2;

    invoke-direct {v2, p0}, Lcom/android/phone/AutoAnswer$2;-><init>(Lcom/android/phone/AutoAnswer;)V

    iput-object v2, p0, Lcom/android/phone/AutoAnswer;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 57
    iput-object p1, p0, Lcom/android/phone/AutoAnswer;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 59
    iget-object v2, p0, Lcom/android/phone/AutoAnswer;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 60
    .local v1, "resolver":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/phone/AutoAnswer;->mAutoAnswerFlag:Z

    .line 61
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/AutoAnswer;->mApp:Lcom/android/phone/PhoneApp;

    .line 62
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/AutoAnswer;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 63
    iput-object v4, p0, Lcom/android/phone/AutoAnswer;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    .line 64
    iput-object v4, p0, Lcom/android/phone/AutoAnswer;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 66
    new-instance v2, Lcom/android/phone/AutoAnswer$1;

    invoke-direct {v2, p0}, Lcom/android/phone/AutoAnswer$1;-><init>(Lcom/android/phone/AutoAnswer;)V

    iput-object v2, p0, Lcom/android/phone/AutoAnswer;->mAutoAnswerRunnable:Ljava/lang/Runnable;

    .line 81
    iget-object v2, p0, Lcom/android/phone/AutoAnswer;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v3, 0x2

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/internal/telephony/CallManager;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 82
    iget-object v2, p0, Lcom/android/phone/AutoAnswer;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2, p0, v5, v4}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 83
    iget-object v2, p0, Lcom/android/phone/AutoAnswer;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v3, 0x3

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 84
    iget-object v2, p0, Lcom/android/phone/AutoAnswer;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v3, 0x4

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/internal/telephony/CallManager;->registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 86
    iget-object v2, p0, Lcom/android/phone/AutoAnswer;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/AutoAnswer;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    .line 87
    sget-boolean v2, Lcom/android/phone/AutoAnswer;->VDBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- mBluetoothHandsfree: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/AutoAnswer;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/AutoAnswer;->log(Ljava/lang/String;)V

    .line 88
    :cond_0
    iget-object v2, p0, Lcom/android/phone/AutoAnswer;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v2, :cond_1

    .line 89
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 90
    .local v0, "mAdapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/AutoAnswer;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v0, v2, v3, v5}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 94
    .end local v0    # "mAdapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_1
    iput-object v4, p0, Lcom/android/phone/AutoAnswer;->mIncoming:Lcom/android/internal/telephony/Connection;

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/AutoAnswer;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/AutoAnswer;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/phone/AutoAnswer;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/phone/AutoAnswer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/AutoAnswer;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/android/phone/AutoAnswer;->mAutoAnswerFlag:Z

    return p1
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 34
    sget-boolean v0, Lcom/android/phone/AutoAnswer;->DBG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/AutoAnswer;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/AutoAnswer;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/phone/AutoAnswer;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/AutoAnswer;)Lcom/android/internal/telephony/CallManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/AutoAnswer;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/phone/AutoAnswer;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/AutoAnswer;)Landroid/bluetooth/BluetoothHeadset;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/AutoAnswer;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/phone/AutoAnswer;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/phone/AutoAnswer;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/AutoAnswer;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothHeadset;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/phone/AutoAnswer;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 34
    sget-boolean v0, Lcom/android/phone/AutoAnswer;->VDBG:Z

    return v0
.end method

.method private cancelAutoAnswer()V
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/android/phone/AutoAnswer;->mAutoAnswerFlag:Z

    if-eqz v0, :cond_1

    .line 158
    sget-boolean v0, Lcom/android/phone/AutoAnswer;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "cancelAutoAnswer() "

    invoke-direct {p0, v0}, Lcom/android/phone/AutoAnswer;->log(Ljava/lang/String;)V

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/android/phone/AutoAnswer;->mAutoAnswerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/AutoAnswer;->mAutoAnswerFlag:Z

    .line 162
    :cond_1
    return-void
.end method

.method private getInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/phone/AutoAnswer;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 241
    const-string v0, "AutoAnswer"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    return-void
.end method

.method private onDisconnect(Landroid/os/AsyncResult;)V
    .locals 2
    .param p1, "r"    # Landroid/os/AsyncResult;

    .prologue
    .line 166
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 167
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v1

    if-nez v1, :cond_1

    .line 168
    sget-boolean v1, Lcom/android/phone/AutoAnswer;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "Disconnected call is not incoming call. "

    invoke-direct {p0, v1}, Lcom/android/phone/AutoAnswer;->log(Ljava/lang/String;)V

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    sget-boolean v1, Lcom/android/phone/AutoAnswer;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "Incoming call is disconnected, cancel auto answer."

    invoke-direct {p0, v1}, Lcom/android/phone/AutoAnswer;->log(Ljava/lang/String;)V

    .line 173
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/AutoAnswer;->cancelAutoAnswer()V

    goto :goto_0
.end method

.method private onNewRingingConnection(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "r"    # Landroid/os/AsyncResult;

    .prologue
    .line 123
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/internal/telephony/Connection;

    if-eqz v2, :cond_1

    .line 124
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/Connection;

    iput-object v2, p0, Lcom/android/phone/AutoAnswer;->mIncoming:Lcom/android/internal/telephony/Connection;

    .line 130
    iget-object v2, p0, Lcom/android/phone/AutoAnswer;->mIncoming:Lcom/android/internal/telephony/Connection;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/AutoAnswer;->mIncoming:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    iget-object v2, p0, Lcom/android/phone/AutoAnswer;->mIncoming:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 132
    .local v1, "state":Lcom/android/internal/telephony/Call$State;
    sget-object v2, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_0

    .line 133
    const-string v2, "auto_answer_timeout"

    invoke-direct {p0, v2}, Lcom/android/phone/AutoAnswer;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 134
    .local v0, "AutoAnswerTimer":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 135
    sget-boolean v2, Lcom/android/phone/AutoAnswer;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "AutoAnswerTimer is OFF"

    invoke-direct {p0, v2}, Lcom/android/phone/AutoAnswer;->log(Ljava/lang/String;)V

    .line 143
    .end local v0    # "AutoAnswerTimer":I
    .end local v1    # "state":Lcom/android/internal/telephony/Call$State;
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/AutoAnswer;->mIncoming:Lcom/android/internal/telephony/Connection;

    goto :goto_0

    .line 137
    .restart local v0    # "AutoAnswerTimer":I
    .restart local v1    # "state":Lcom/android/internal/telephony/Call$State;
    :cond_2
    sget-boolean v2, Lcom/android/phone/AutoAnswer;->DBG:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set AutoAnswerTimer = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/AutoAnswer;->log(Ljava/lang/String;)V

    .line 138
    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/phone/AutoAnswer;->mAutoAnswerFlag:Z

    .line 139
    iget-object v2, p0, Lcom/android/phone/AutoAnswer;->mAutoAnswerRunnable:Ljava/lang/Runnable;

    int-to-long v3, v0

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private onPhoneStateChanged(Landroid/os/AsyncResult;)V
    .locals 2
    .param p1, "r"    # Landroid/os/AsyncResult;

    .prologue
    .line 177
    iget-object v1, p0, Lcom/android/phone/AutoAnswer;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    .line 179
    .local v0, "state":Lcom/android/internal/telephony/Phone$State;
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_1

    .line 180
    sget-boolean v1, Lcom/android/phone/AutoAnswer;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "onPhoneStateChanged: OFF HOOK"

    invoke-direct {p0, v1}, Lcom/android/phone/AutoAnswer;->log(Ljava/lang/String;)V

    .line 182
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/AutoAnswer;->cancelAutoAnswer()V

    .line 184
    :cond_1
    return-void
.end method

.method private onUnknownConnectionAppeared(Landroid/os/AsyncResult;)V
    .locals 2
    .param p1, "r"    # Landroid/os/AsyncResult;

    .prologue
    .line 146
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    .line 147
    .local v0, "state":Lcom/android/internal/telephony/Phone$State;
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    .line 148
    invoke-direct {p0, p1}, Lcom/android/phone/AutoAnswer;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    .line 150
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 98
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 119
    :goto_0
    return-void

    .line 100
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/phone/AutoAnswer;->onNewRingingConnection(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 104
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/phone/AutoAnswer;->onUnknownConnectionAppeared(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 108
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/phone/AutoAnswer;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 112
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/phone/AutoAnswer;->onDisconnect(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method isBluetoothAvailable()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 187
    sget-boolean v4, Lcom/android/phone/AutoAnswer;->VDBG:Z

    if-eqz v4, :cond_0

    const-string v4, "isBluetoothAvailable()..."

    invoke-direct {p0, v4}, Lcom/android/phone/AutoAnswer;->log(Ljava/lang/String;)V

    .line 188
    :cond_0
    iget-object v4, p0, Lcom/android/phone/AutoAnswer;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-nez v4, :cond_3

    .line 190
    sget-boolean v4, Lcom/android/phone/AutoAnswer;->VDBG:Z

    if-eqz v4, :cond_1

    const-string v4, "  ==> FALSE (not BT capable)"

    invoke-direct {p0, v4}, Lcom/android/phone/AutoAnswer;->log(Ljava/lang/String;)V

    :cond_1
    move v2, v3

    .line 225
    :cond_2
    :goto_0
    return v2

    .line 209
    :cond_3
    const/4 v2, 0x0

    .line 210
    .local v2, "isConnected":Z
    iget-object v4, p0, Lcom/android/phone/AutoAnswer;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v4, :cond_6

    .line 211
    iget-object v4, p0, Lcom/android/phone/AutoAnswer;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 213
    .local v1, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 214
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 215
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    const/4 v2, 0x1

    .line 217
    sget-boolean v3, Lcom/android/phone/AutoAnswer;->VDBG:Z

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  - headset state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/AutoAnswer;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/AutoAnswer;->log(Ljava/lang/String;)V

    .line 219
    :cond_4
    sget-boolean v3, Lcom/android/phone/AutoAnswer;->VDBG:Z

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  - headset address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/AutoAnswer;->log(Ljava/lang/String;)V

    .line 220
    :cond_5
    sget-boolean v3, Lcom/android/phone/AutoAnswer;->VDBG:Z

    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  - isConnected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/AutoAnswer;->log(Ljava/lang/String;)V

    .line 224
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_6
    sget-boolean v3, Lcom/android/phone/AutoAnswer;->VDBG:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  ==> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/AutoAnswer;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
