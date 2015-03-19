.class public Lcom/android/settings/wifi/p2p/WpsP2pDialog;
.super Landroid/app/AlertDialog;
.source "WpsP2pDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/p2p/WpsP2pDialog$3;,
        Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;
    }
.end annotation


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mContext:Landroid/content/Context;

.field mDialogState:Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;

.field private mHandler:Landroid/os/Handler;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mTextView:Landroid/widget/TextView;

.field private mTimeoutBar:Landroid/widget/ProgressBar;

.field private mTimer:Ljava/util/Timer;

.field private mView:Landroid/view/View;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mWpsP2pListener:Landroid/net/wifi/p2p/WifiP2pManager$WpsP2pListener;

.field private mWpsPin:Ljava/lang/String;

.field private mWpsSetup:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wpsSetup"    # I
    .param p3, "WpsPin"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->mHandler:Landroid/os/Handler;

    .line 65
    sget-object v0, Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;->WPS_INIT:Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->mDialogState:Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;

    .line 70
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->mContext:Landroid/content/Context;

    .line 71
    iput p2, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->mWpsSetup:I

    .line 72
    iget v0, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->mWpsSetup:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 73
    iput-object p3, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->mWpsPin:Ljava/lang/String;

    .line 121
    :goto_0
    new-instance v0, Lcom/android/settings/wifi/p2p/WpsP2pDialog$1WpsP2pListener;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/p2p/WpsP2pDialog$1WpsP2pListener;-><init>(Lcom/android/settings/wifi/p2p/WpsP2pDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->mWpsP2pListener:Landroid/net/wifi/p2p/WifiP2pManager$WpsP2pListener;

    .line 122
    return-void

    .line 75
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->mWpsPin:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/p2p/WpsP2pDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WpsP2pDialog;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/p2p/WpsP2pDialog;Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WpsP2pDialog;
    .param p1, "x1"    # Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->updateDialog(Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/p2p/WpsP2pDialog;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WpsP2pDialog;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->mTimeoutBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/p2p/WpsP2pDialog;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WpsP2pDialog;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/p2p/WpsP2pDialog;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WpsP2pDialog;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/p2p/WpsP2pDialog;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WpsP2pDialog;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private updateDialog(Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;Ljava/lang/String;)V
    .locals 4
    .param p1, "state"    # Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x8

    .line 206
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->mDialogState:Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 225
    :goto_0
    return-void

    .line 210
    :cond_0
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->mDialogState:Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;

    .line 212
    sget-object v0, Lcom/android/settings/wifi/p2p/WpsP2pDialog$3;->$SwitchMap$com$android$settings$wifi$p2p$WpsP2pDialog$DialogState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 224
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 219
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0526

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->mTimeoutBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    .line 212
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 126
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040096

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->mView:Landroid/view/View;

    .line 128
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->mView:Landroid/view/View;

    const v1, 0x7f0801d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->mTextView:Landroid/widget/TextView;

    .line 129
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->mTextView:Landroid/widget/TextView;

    const v1, 0x7f0b031a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 131
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->mView:Landroid/view/View;

    const v1, 0x7f0801d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->mTimeoutBar:Landroid/widget/ProgressBar;

    .line 132
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->mTimeoutBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 133
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->mTimeoutBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 135
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->mView:Landroid/view/View;

    const v1, 0x7f0801d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->mProgressBar:Landroid/widget/ProgressBar;

    .line 136
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->mView:Landroid/view/View;

    const v1, 0x7f0801d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->mButton:Landroid/widget/Button;

    .line 139
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->mButton:Landroid/widget/Button;

    const v1, 0x7f0b0353

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 140
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->mButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/wifi/p2p/WpsP2pDialog$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/p2p/WpsP2pDialog$1;-><init>(Lcom/android/settings/wifi/p2p/WpsP2pDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->mContext:Landroid/content/Context;

    const-string v1, "wifip2p"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 148
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 150
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 151
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 152
    return-void
.end method

.method protected onStart()V
    .locals 8

    .prologue
    const-wide/16 v2, 0x3e8

    const/4 v7, 0x0

    .line 159
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->mTimer:Ljava/util/Timer;

    .line 160
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/settings/wifi/p2p/WpsP2pDialog$2;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/p2p/WpsP2pDialog$2;-><init>(Lcom/android/settings/wifi/p2p/WpsP2pDialog;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 181
    new-instance v6, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v6}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 182
    .local v6, "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    iput-object v7, v6, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 183
    iget-object v0, v6, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget v1, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->mWpsSetup:I

    iput v1, v0, Landroid/net/wifi/WpsInfo;->setup:I

    .line 185
    iget v0, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->mWpsSetup:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 186
    iget-object v0, v6, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->mWpsPin:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    .line 190
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->mWpsP2pListener:Landroid/net/wifi/p2p/WifiP2pManager$WpsP2pListener;

    invoke-virtual {v0, v1, v6, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->startP2pWps(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$WpsP2pListener;)V

    .line 192
    return-void

    .line 188
    :cond_0
    iget-object v0, v6, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput-object v7, v0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->mDialogState:Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;

    sget-object v1, Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;->WPS_COMPLETE:Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;

    if-eq v0, v1, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->cancelP2pWps(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 203
    :cond_1
    return-void
.end method
