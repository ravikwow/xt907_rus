.class public Lcom/motorola/blur/privacy/LegalReaderActivity;
.super Lcom/motorola/blur/setup/SetupActivity;
.source "LegalReaderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/privacy/LegalReaderActivity$LegalService;,
        Lcom/motorola/blur/privacy/LegalReaderActivity$ActivityInstance;
    }
.end annotation


# static fields
.field public static final COLLECTION_TYPE:Ljava/lang/String; = "CollectionAndUse"

.field public static final CONTACT_TYPE:Ljava/lang/String; = "ContactMotorola"

.field public static final ERROR_DIALOG_ID:I = 0x2

.field public static final FULL_PRIVACY_TYPE:Ljava/lang/String; = "FullPrivacy"

.field private static final LAUNCH_MOTO_TERMS_FOR_SETTINGS:Ljava/lang/String; = "launch_moto_terms_activity_for_settings"

.field private static final LEGAL_TEXT_RECEVIED_ACTION:Ljava/lang/String; = "com.motorola.blur.legal.TEXT_RECEIVED"

.field public static final LOCATION_TYPE:Ljava/lang/String; = "Location"

.field public static final PICK_WIFI:I = 0x64

.field public static final PROGRESS_DIALOG_ID:I = 0x1

.field public static final SECURITY_TYPE:Ljava/lang/String; = "Security"

.field private static final TAG:Ljava/lang/String; = "BlurLRA"

.field public static final TOS_TYPE:Ljava/lang/String; = "TosType"

.field public static final TRACKING_TYPE:Ljava/lang/String; = "TrackingAndAds"

.field private static final TYPE_EXTRA:Ljava/lang/String; = "type"


# instance fields
.field private final SCROLL_POS:Ljava/lang/String;

.field private final TEXT:Ljava/lang/String;

.field protected mBackupResId:I

.field protected mBackupString:Ljava/lang/String;

.field private mFirstStart:Z

.field private mImsi:Ljava/lang/String;

.field private mPhoneNum:Ljava/lang/String;

.field protected mProgressShowing:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverRegisterd:Z

.field private mShowPrivacyLink:Z

.field private mSn:Ljava/lang/String;

.field protected mTextView:Landroid/widget/TextView;

.field private mTitleResId:I

.field private mTitleString:Ljava/lang/String;

.field private mType:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;

.field private mTypeString:Ljava/lang/String;

.field private mWaitingForNetwork:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Lcom/motorola/blur/setup/SetupActivity;-><init>()V

    .line 77
    iput-object v0, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mTextView:Landroid/widget/TextView;

    .line 79
    iput v1, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mBackupResId:I

    .line 80
    iput-object v0, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mBackupString:Ljava/lang/String;

    .line 81
    iput-object v0, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mTitleString:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mTypeString:Ljava/lang/String;

    .line 83
    iput-boolean v1, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mShowPrivacyLink:Z

    .line 86
    iput-boolean v1, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mProgressShowing:Z

    .line 88
    iput-object v0, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mPhoneNum:Ljava/lang/String;

    .line 89
    iput-object v0, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mImsi:Ljava/lang/String;

    .line 90
    iput-object v0, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mSn:Ljava/lang/String;

    .line 92
    iput-boolean v1, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mReceiverRegisterd:Z

    .line 93
    iput-boolean v1, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mWaitingForNetwork:Z

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mFirstStart:Z

    .line 95
    const-string v0, "text"

    iput-object v0, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->TEXT:Ljava/lang/String;

    .line 96
    const-string v0, "scroll_position"

    iput-object v0, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->SCROLL_POS:Ljava/lang/String;

    .line 347
    new-instance v0, Lcom/motorola/blur/privacy/LegalReaderActivity$4;

    invoke-direct {v0, p0}, Lcom/motorola/blur/privacy/LegalReaderActivity$4;-><init>(Lcom/motorola/blur/privacy/LegalReaderActivity;)V

    iput-object v0, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 415
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/blur/privacy/LegalReaderActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/privacy/LegalReaderActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mPhoneNum:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/motorola/blur/privacy/LegalReaderActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/privacy/LegalReaderActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mPhoneNum:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/motorola/blur/privacy/LegalReaderActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/privacy/LegalReaderActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mImsi:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/motorola/blur/privacy/LegalReaderActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/privacy/LegalReaderActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mImsi:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/motorola/blur/privacy/LegalReaderActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/privacy/LegalReaderActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mSn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/motorola/blur/privacy/LegalReaderActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/privacy/LegalReaderActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mSn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/motorola/blur/privacy/LegalReaderActivity;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/privacy/LegalReaderActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mType:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;

    return-object v0
.end method

.method static synthetic access$400(Lcom/motorola/blur/privacy/LegalReaderActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/privacy/LegalReaderActivity;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/motorola/blur/privacy/LegalReaderActivity;->setDefaults()V

    return-void
.end method

.method private requestLegal()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 205
    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 206
    iput-boolean v0, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mProgressShowing:Z

    .line 208
    sget-object v0, Lcom/motorola/blur/util/concurrent/UIThreads;->executors:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/motorola/blur/privacy/LegalReaderActivity$2;

    invoke-direct {v1, p0}, Lcom/motorola/blur/privacy/LegalReaderActivity$2;-><init>(Lcom/motorola/blur/privacy/LegalReaderActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 235
    return-void
.end method

.method private setDefaults()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 264
    iget-object v0, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mPhoneNum:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 265
    const-string v0, "NO_PHONE_NUMBER"

    iput-object v0, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mPhoneNum:Ljava/lang/String;

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mImsi:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 268
    const-string v0, "NO_IMSI"

    iput-object v0, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mImsi:Ljava/lang/String;

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mSn:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 271
    const-string v0, "NO_SERIAL_NUMBER"

    iput-object v0, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mSn:Ljava/lang/String;

    .line 273
    :cond_2
    iget-object v0, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mType:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;

    if-nez v0, :cond_3

    .line 274
    sget-object v0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;->ToS:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;

    iput-object v0, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mType:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;

    .line 277
    :cond_3
    iget v0, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mBackupResId:I

    packed-switch v0, :pswitch_data_0

    .line 286
    sget-object v0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;->ToS:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;

    iput-object v0, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mType:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;

    .line 290
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mTypeString:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 291
    iget-object v0, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mTypeString:Ljava/lang/String;

    const-string v1, "FullPrivacy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 292
    sget-object v0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;->Privacy:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;

    iput-object v0, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mType:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;

    .line 314
    :cond_4
    :goto_1
    return-void

    .line 279
    :pswitch_0
    sget-object v0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;->EULA:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;

    iput-object v0, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mType:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;

    goto :goto_0

    .line 282
    :pswitch_1
    sget-object v0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;->ADA:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;

    iput-object v0, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mType:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;

    goto :goto_0

    .line 294
    :cond_5
    iget-object v0, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mTypeString:Ljava/lang/String;

    const-string v1, "Location"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 295
    iput-object v3, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mType:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;

    .line 296
    iput-boolean v2, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mShowPrivacyLink:Z

    goto :goto_1

    .line 297
    :cond_6
    iget-object v0, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mTypeString:Ljava/lang/String;

    const-string v1, "CollectionAndUse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 298
    iput-object v3, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mType:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;

    .line 299
    iput-boolean v2, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mShowPrivacyLink:Z

    goto :goto_1

    .line 300
    :cond_7
    iget-object v0, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mTypeString:Ljava/lang/String;

    const-string v1, "TrackingAndAds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 301
    iput-object v3, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mType:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;

    .line 302
    iput-boolean v2, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mShowPrivacyLink:Z

    goto :goto_1

    .line 303
    :cond_8
    iget-object v0, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mTypeString:Ljava/lang/String;

    const-string v1, "Security"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 304
    iput-object v3, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mType:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;

    .line 305
    iput-boolean v2, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mShowPrivacyLink:Z

    goto :goto_1

    .line 306
    :cond_9
    iget-object v0, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mTypeString:Ljava/lang/String;

    const-string v1, "ContactMotorola"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 307
    iput-object v3, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mType:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;

    .line 308
    iput-boolean v2, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mShowPrivacyLink:Z

    goto :goto_1

    .line 309
    :cond_a
    iget-object v0, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mTypeString:Ljava/lang/String;

    const-string v1, "TosType"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 310
    sget-object v0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;->ToS:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;

    iput-object v0, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mType:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;

    .line 311
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mShowPrivacyLink:Z

    goto :goto_1

    .line 277
    nop

    :pswitch_data_0
    .packed-switch 0x7f08006a
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showPrivacyLink()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 239
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 240
    .local v1, "res":Landroid/content/res/Resources;
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    .line 241
    .local v0, "method":Landroid/text/method/MovementMethod;
    const v4, 0x7f0c0033

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 242
    .local v3, "tv":Landroid/widget/TextView;
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 243
    .local v2, "sb":Landroid/text/SpannableStringBuilder;
    const v4, 0x7f0800ed

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 244
    new-instance v4, Lcom/motorola/blur/privacy/LegalReaderActivity$3;

    invoke-direct {v4, p0}, Lcom/motorola/blur/privacy/LegalReaderActivity$3;-><init>(Lcom/motorola/blur/privacy/LegalReaderActivity;)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-virtual {v2, v4, v6, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 258
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 260
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 261
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 392
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 393
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 394
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 379
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 380
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 381
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    const/4 v12, 0x0

    .line 111
    invoke-super {p0, p1}, Lcom/motorola/blur/setup/SetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 115
    const/16 v8, 0x8

    invoke-virtual {p0, v8}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 116
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 117
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0, v12}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 119
    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 122
    :cond_0
    const v8, 0x7f030006

    invoke-virtual {p0, v8}, Landroid/app/Activity;->setContentView(I)V

    .line 123
    invoke-virtual {p0}, Lcom/motorola/blur/privacy/LegalReaderActivity;->registerRestartReceiver()V

    .line 124
    invoke-static {p0}, Lcom/motorola/blur/privacy/LegalReaderActivity$ActivityInstance;->setInstance(Lcom/motorola/blur/privacy/LegalReaderActivity;)V

    .line 125
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 126
    .local v3, "intent":Landroid/content/Intent;
    const-string v8, "launch_moto_terms_activity_for_settings"

    invoke-virtual {v3, v8, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 127
    .local v6, "use_just_for_settings":Z
    const v8, 0x7f0c0032

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mTextView:Landroid/widget/TextView;

    .line 128
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v10, "device_provisioned"

    invoke-static {v8, v10, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 130
    .local v5, "provisioned":I
    iget-object v10, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mTextView:Landroid/widget/TextView;

    if-nez v5, :cond_6

    move v8, v9

    :goto_0
    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 132
    const-string v8, "type"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mTypeString:Ljava/lang/String;

    .line 133
    if-eqz v6, :cond_7

    .line 134
    const v8, 0x7f08001b

    iput v8, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mTitleResId:I

    .line 135
    const v8, 0x7f080069

    iput v8, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mBackupResId:I

    .line 145
    :goto_1
    iget v8, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mBackupResId:I

    if-eqz v8, :cond_1

    .line 146
    iget v8, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mBackupResId:I

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mBackupString:Ljava/lang/String;

    .line 148
    :cond_1
    iget-object v8, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mBackupString:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 149
    const-string v8, "BlurLRA"

    new-array v10, v9, [Ljava/lang/Object;

    const-string v11, "No text for the reader!"

    aput-object v11, v10, v12

    invoke-static {v8, v10}, Lcom/motorola/blur/util/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 150
    const/4 v8, -0x1

    invoke-virtual {p0, v8}, Landroid/app/Activity;->setResult(I)V

    .line 151
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 154
    :cond_2
    iget v8, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mTitleResId:I

    if-eqz v8, :cond_9

    .line 155
    iget v8, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mTitleResId:I

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mTitleString:Ljava/lang/String;

    .line 163
    :cond_3
    :goto_2
    iget-object v8, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mTitleString:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 164
    iget-object v8, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mTitleString:Ljava/lang/String;

    invoke-virtual {p0, v8}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 167
    :cond_4
    invoke-direct {p0}, Lcom/motorola/blur/privacy/LegalReaderActivity;->setDefaults()V

    .line 168
    iget-boolean v8, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mShowPrivacyLink:Z

    if-eqz v8, :cond_5

    .line 169
    invoke-direct {p0}, Lcom/motorola/blur/privacy/LegalReaderActivity;->showPrivacyLink()V

    .line 172
    :cond_5
    iget-object v8, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mType:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;

    if-nez v8, :cond_a

    .line 173
    iget-object v8, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mTextView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mBackupString:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    :goto_3
    return-void

    .line 130
    :cond_6
    const/4 v8, 0x3

    goto :goto_0

    .line 136
    :cond_7
    iget-object v8, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mTypeString:Ljava/lang/String;

    if-eqz v8, :cond_8

    .line 137
    const-string v8, "android.intent.extra.TITLE"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mTitleString:Ljava/lang/String;

    .line 138
    const-string v8, "android.intent.extra.TEXT"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mBackupString:Ljava/lang/String;

    goto :goto_1

    .line 140
    :cond_8
    const-string v8, "android.intent.extra.TITLE"

    invoke-virtual {v3, v8, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mTitleResId:I

    .line 141
    const-string v8, "android.intent.extra.TEXT"

    invoke-virtual {v3, v8, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mBackupResId:I

    goto :goto_1

    .line 158
    :cond_9
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    const-string v10, "el"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 159
    iget-object v8, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mTitleString:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mTitleString:Ljava/lang/String;

    goto :goto_2

    .line 177
    :cond_a
    if-eqz p1, :cond_b

    .line 178
    iget-object v8, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mTextView:Landroid/widget/TextView;

    const-string v9, "text"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    const-string v8, "scroll_position"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 180
    .local v4, "offset":I
    iget-object v8, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mTextView:Landroid/widget/TextView;

    new-instance v9, Lcom/motorola/blur/privacy/LegalReaderActivity$1;

    invoke-direct {v9, p0, v4}, Lcom/motorola/blur/privacy/LegalReaderActivity$1;-><init>(Lcom/motorola/blur/privacy/LegalReaderActivity;I)V

    invoke-virtual {v8, v9}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 191
    .end local v4    # "offset":I
    :cond_b
    const-string v8, "connectivity"

    invoke-virtual {p0, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 192
    .local v1, "connManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 193
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-nez v8, :cond_d

    .line 194
    :cond_c
    const-string v8, "wifi"

    invoke-virtual {p0, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    .line 195
    .local v7, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual {v7, v9}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 196
    new-instance v8, Landroid/content/Intent;

    const-string v10, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {v8, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v10, 0x64

    invoke-virtual {p0, v8, v10}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 197
    iput-boolean v9, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mWaitingForNetwork:Z

    goto/16 :goto_3

    .line 199
    .end local v7    # "wm":Landroid/net/wifi/WifiManager;
    :cond_d
    invoke-direct {p0}, Lcom/motorola/blur/privacy/LegalReaderActivity;->requestLegal()V

    goto/16 :goto_3
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 487
    if-ne p1, v5, :cond_1

    .line 488
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 489
    .local v3, "pd":Landroid/app/ProgressDialog;
    const v4, 0x7f08001f

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 490
    invoke-virtual {v3, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 491
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 492
    new-instance v4, Lcom/motorola/blur/privacy/LegalReaderActivity$5;

    invoke-direct {v4, p0}, Lcom/motorola/blur/privacy/LegalReaderActivity$5;-><init>(Lcom/motorola/blur/privacy/LegalReaderActivity;)V

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 521
    .end local v3    # "pd":Landroid/app/ProgressDialog;
    :cond_0
    :goto_0
    return-object v3

    .line 498
    :cond_1
    const/4 v4, 0x2

    if-ne p1, v4, :cond_0

    .line 499
    const v2, 0x7f0800f0

    .line 500
    .local v2, "error":I
    sget-object v4, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;->ToS:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;

    iget-object v5, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mType:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;

    if-ne v4, v5, :cond_3

    .line 501
    const v2, 0x7f0800ef

    .line 506
    :cond_2
    :goto_1
    new-instance v4, Landroid/app/AlertDialog$Builder;

    const/4 v5, 0x4

    invoke-direct {v4, p0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v5, 0x1080027

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0800f1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f08003b

    invoke-virtual {v4, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 513
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 514
    .local v0, "ad":Landroid/app/AlertDialog;
    new-instance v4, Lcom/motorola/blur/privacy/LegalReaderActivity$6;

    invoke-direct {v4, p0}, Lcom/motorola/blur/privacy/LegalReaderActivity$6;-><init>(Lcom/motorola/blur/privacy/LegalReaderActivity;)V

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object v3, v0

    .line 519
    goto :goto_0

    .line 502
    .end local v0    # "ad":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_3
    sget-object v4, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;->Privacy:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;

    iget-object v5, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mType:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;

    if-ne v4, v5, :cond_2

    .line 503
    const v2, 0x7f0800ee

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 398
    iget-boolean v0, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mProgressShowing:Z

    if-ne v0, v1, :cond_0

    .line 399
    invoke-virtual {p0, v1}, Landroid/app/Activity;->dismissDialog(I)V

    .line 401
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mReceiverRegisterd:Z

    if-eqz v0, :cond_1

    .line 402
    iget-object v0, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 403
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mReceiverRegisterd:Z

    .line 406
    :cond_1
    invoke-super {p0}, Landroid/app/ActivityGroup;->onDestroy()V

    .line 407
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 385
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 386
    const-string v0, "text"

    iget-object v1, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const-string v0, "scroll_position"

    iget-object v1, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    const v3, 0x7f0c0031

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 388
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 318
    invoke-super {p0}, Lcom/motorola/blur/setup/SetupActivity;->onStart()V

    .line 328
    new-instance v2, Lcom/motorola/blur/setup/SetupUtility$showNavBarButtonTask;

    invoke-direct {v2, p0}, Lcom/motorola/blur/setup/SetupUtility$showNavBarButtonTask;-><init>(Landroid/app/Activity;)V

    new-array v3, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 330
    iget-boolean v2, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mFirstStart:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 331
    iput-boolean v4, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mFirstStart:Z

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    iget-boolean v2, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mWaitingForNetwork:Z

    if-eqz v2, :cond_0

    .line 336
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 337
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 338
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_3

    .line 339
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 341
    :cond_3
    invoke-direct {p0}, Lcom/motorola/blur/privacy/LegalReaderActivity;->requestLegal()V

    .line 342
    iput-boolean v4, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mWaitingForNetwork:Z

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 412
    invoke-super {p0}, Landroid/app/ActivityGroup;->onStop()V

    .line 413
    return-void
.end method

.method public registerRestartReceiver()V
    .locals 2

    .prologue
    .line 370
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.motorola.blur.service.blur.Actions.SERVICES_STARTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 371
    .local v0, "restartFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 372
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/blur/privacy/LegalReaderActivity;->mReceiverRegisterd:Z

    .line 373
    return-void
.end method
