.class public Lcom/motorola/blur/setup/SetupActivity;
.super Landroid/app/ActivityGroup;
.source "SetupActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/setup/SetupActivity$FinishSetupTask;,
        Lcom/motorola/blur/setup/SetupActivity$launchSetupNotifyTask;
    }
.end annotation


# static fields
.field public static final ACTION_CANCAL_NOTIFICATION:Ljava/lang/String; = "com.motorola.blur.action.CANCAL_NOTIFICATION"

.field public static final ACTION_SEND_NOTIFICATION:Ljava/lang/String; = "com.motorola.blur.action.SEND_NOTIFICATION"

.field protected static final BLUR_CONFIRMATION:I = 0x3c

.field protected static final BLUR_EMAIL_ACTIVITY:I = 0x3a

.field protected static final BLUR_PASSWORD_ACTIVITY:I = 0x3b

.field public static final BLUR_SERVICE_AGREENMENT_ACCEPTED:Ljava/lang/String; = "BlurServiceAgreement"

.field public static final BLUR_SETUP_DISABLE_LOCATION_SERVICE:Ljava/lang/String; = "BlurSetupDisableLocationService"

.field private static final BLUR_SETUP_HOME_ACTIVITY:Ljava/lang/String; = "com.motorola.blur.setup.HomeActivity"

.field private static final BLUR_SETUP_PACKAGE:Ljava/lang/String; = "com.motorola.blur.setup"

.field public static final CAPTCHA_INPUT_NOTIFICATION_ID:I = 0x64

.field protected static final CAPTCHA_REQUEST:I = 0x38

.field public static final CLOUD_PREFERENCE:Ljava/lang/String; = "CloudPreference"

.field protected static final CONGRATS:I = 0x43

.field public static final DATA_COLLECTION_PREFERENCE:Ljava/lang/String; = "DataCollection"

.field protected static final DEVICE_SETUP_NOTIFY:I = 0x41

.field protected static final FIRST_APP_MENU_ITEM:I = 0x44

.field private static final FIRST_MENU_ITEM:I = 0x32

.field public static final FROM_HOME:Ljava/lang/String; = "fromHome"

.field protected static final GOOGLE_AUTH:I = 0x39

.field public static final GOOGLE_AUTH_TYPE:Ljava/lang/String; = "com.google"

.field protected static final HUX_EMAIL:I = 0x42

.field protected static final LOCATION_CONSENT:I = 0x40

.field protected static final MAKE_EMERGENCY_CALL:I = 0x32

.field public static final MOTO_ID_RESTORE:Ljava/lang/String; = "motoIdRestore"

.field public static final NETWORK_TIME_SET_PREFERENCE:Ljava/lang/String; = "NetworkTimeSet"

.field public static final NEW_INTENT:Ljava/lang/String; = "Intent"

.field public static final NOTIFICATION_ID:Ljava/lang/String; = "NOTIFICATION_ID"

.field public static final PREFERENCES:Ljava/lang/String; = "DeviceSetup"

.field public static final PRIVACY_NOTIFICATION_ID:I = 0x66

.field public static final SETUP_COMPLETE:Ljava/lang/String; = "SetupComplete"

.field protected static final SET_UP_APN:I = 0x33

.field private static final SET_UP_CANCEL:I = 0x37

.field protected static final SET_UP_CLOUD:I = 0x34

.field protected static final SET_UP_WIFI:I = 0x35

.field public static final SHOW_CONNECTION_CHOOSER:Ljava/lang/String; = "ShowConnectionChooser"

.field public static final SHOW_DATA_SAVER:Ljava/lang/String; = "ShowDataSaverInSetup"

.field protected static final SHOW_MEID:I = 0x36

.field public static final SHOW_SETUP_LATER_AVAILABLE:Ljava/lang/String; = "SetupLaterAvailable"

.field public static final SHOW_SKIP_SETUP_MENU:Ljava/lang/String; = "ShowSkipSetupMenu"

.field public static final SILENT_REGISTRATION_CAPTCHA_USER_INPUT:Ljava/lang/String; = "com.motorola.blur.setup.captcha.input"

.field public static final SILENT_REG_ACTION_ACCOMPLISHED:Ljava/lang/String; = "SilentRegActionAccomplished"

.field public static final SILENT_REG_ACTION_RADIO_DOWN:Ljava/lang/String; = "SilentRegActionRadioDown"

.field public static final SILENT_REG_ACTION_TEMP_FAILED:Ljava/lang/String; = "SilentRegActionTemplyFailed"

.field public static final SILENT_REG_CAPTCHA_RESULT:Ljava/lang/String; = "captcha.result"

.field public static final SILENT_REG_REGISTRATION_START:Ljava/lang/String; = "com.motorola.blur.setup.starttimer"

.field public static final SILENT_REG_REQUEST_FROM:Ljava/lang/String; = "SilentRegRequestFrom"

.field public static final SILENT_REG_REQUEST_FROM_ACTIVITY:I = 0x2

.field public static final SILENT_REG_REQUEST_FROM_RECEIVER:I = 0x1

.field public static final SILENT_REG_REQUEST_FROM_TIMER:I = 0x3

.field public static final SILENT_REG_REQUEST_FROM_UNKNOW:I = 0x0

.field public static final SILENT_REG_SYSTEM_UPDATE_REQUEST:Ljava/lang/String; = "BlurServiceSlientRegistrationSystemUpdateRequest"

.field protected static final START_CARRIER_GUIDED_TOURS:I = 0x3e

.field protected static final START_CARRIER_LBS:I = 0x3d

.field private static final TAG:Ljava/lang/String; = "SetupActivity"

.field public static final TRANSIENT_NOTIFICATION_ID:I = 0x68

.field private static final VZW_EVENT_RECIEVER:Ljava/lang/String; = "com.motorola.setupwizard.controller.VzwEventReciever"

.field private static final VZW_HOME_ACTIVITY:Ljava/lang/String; = "com.motorola.setupwizard.controller.VzwBaseHome"

.field private static final VZW_HOME_PACKAGE:Ljava/lang/String; = "com.motorola.setupwizard.controller"

.field public static final WIFI_PREFERENCE:Ljava/lang/String; = "WifiPreference"

.field protected static final WIFI_SETTINGS:I = 0x3f

.field protected static mFlexConfigurationLatch:Z

.field protected static mIsCDMA:Z

.field protected static mShowConnectionChooser:Z

.field protected static mShowSetupLaterAvailable:Z

.field protected static mShowSkipSetupMenu:Z

.field protected static mSilentRegistrationRequired:Z

.field protected static sBlurDeferredSetup:Z

.field protected static sHomeScreenPolicy:I


# instance fields
.field private mCloudPreference:Z

.field private mGotPreferences:Z

.field private mHideBackButton:Z

.field private mShowConfigMenuItems:Z

.field private mWifiPreference:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 112
    sput-boolean v0, Lcom/motorola/blur/setup/SetupActivity;->mShowSkipSetupMenu:Z

    .line 113
    sput-boolean v1, Lcom/motorola/blur/setup/SetupActivity;->mShowConnectionChooser:Z

    .line 114
    sput-boolean v0, Lcom/motorola/blur/setup/SetupActivity;->mFlexConfigurationLatch:Z

    .line 115
    sput-boolean v0, Lcom/motorola/blur/setup/SetupActivity;->mSilentRegistrationRequired:Z

    .line 116
    sput-boolean v1, Lcom/motorola/blur/setup/SetupActivity;->mIsCDMA:Z

    .line 118
    sput-boolean v1, Lcom/motorola/blur/setup/SetupActivity;->mShowSetupLaterAvailable:Z

    .line 120
    sput v1, Lcom/motorola/blur/setup/SetupActivity;->sHomeScreenPolicy:I

    .line 121
    sput-boolean v0, Lcom/motorola/blur/setup/SetupActivity;->sBlurDeferredSetup:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 32
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    .line 106
    iput-boolean v0, p0, Lcom/motorola/blur/setup/SetupActivity;->mShowConfigMenuItems:Z

    .line 107
    iput-boolean v1, p0, Lcom/motorola/blur/setup/SetupActivity;->mGotPreferences:Z

    .line 108
    iput-boolean v0, p0, Lcom/motorola/blur/setup/SetupActivity;->mCloudPreference:Z

    .line 109
    iput-boolean v0, p0, Lcom/motorola/blur/setup/SetupActivity;->mWifiPreference:Z

    .line 110
    iput-boolean v1, p0, Lcom/motorola/blur/setup/SetupActivity;->mHideBackButton:Z

    .line 417
    return-void
.end method

.method private static final addMenuItem(Landroid/content/res/Resources;Landroid/view/Menu;II)V
    .locals 3
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "menuId"    # I
    .param p3, "titleId"    # I

    .prologue
    const/4 v2, 0x0

    .line 223
    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, p2, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 224
    .local v0, "item":Landroid/view/MenuItem;
    packed-switch p2, :pswitch_data_0

    .line 241
    :goto_0
    :pswitch_0
    return-void

    .line 226
    :pswitch_1
    const v1, 0x7f020016

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 229
    :pswitch_2
    const v1, 0x1080049

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 232
    :pswitch_3
    const v1, 0x7f020017

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 235
    :pswitch_4
    const v1, 0x7f020019

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 238
    :pswitch_5
    const v1, 0x7f020018

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 224
    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method static final haveEmailAccounts(Landroid/content/Context;)Z
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 360
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 361
    .local v0, "content":Landroid/content/ContentResolver;
    sget-object v1, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->EMAIL_ACCOUNTS_CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 362
    .local v6, "c":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 367
    :goto_0
    return v7

    .line 365
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v7, 0x1

    .line 366
    .local v7, "ret":Z
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private final setUpApn()V
    .locals 2

    .prologue
    .line 301
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APN_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 302
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x33

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 303
    return-void
.end method

.method private final setUpCloud()V
    .locals 2

    .prologue
    .line 293
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.blur.service.blur.Actions.MotherCloudPicker"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 294
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x34

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 295
    return-void
.end method

.method private final setUpWifi()V
    .locals 2

    .prologue
    .line 284
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 285
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x35

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 286
    return-void
.end method

.method private showMEID()V
    .locals 8

    .prologue
    .line 309
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v5, 0x4

    invoke-direct {v0, p0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 311
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f08004b

    .line 312
    .local v1, "msgStringId":I
    const v3, 0x7f08004a

    .line 314
    .local v3, "titleStringId":I
    sget-boolean v5, Lcom/motorola/blur/setup/SetupActivity;->mIsCDMA:Z

    if-nez v5, :cond_0

    .line 315
    const v1, 0x7f080049

    .line 316
    const v3, 0x7f080048

    .line 318
    :cond_0
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 319
    const v5, 0x7f08003b

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 320
    const/4 v2, 0x0

    .line 321
    .local v2, "strMEID":Ljava/lang/String;
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 322
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v4, :cond_1

    .line 323
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 328
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {v5, v1, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 329
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 330
    return-void
.end method


# virtual methods
.method protected goBack()V
    .locals 1

    .prologue
    .line 163
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 173
    .local v0, "intent":Landroid/content/Intent;
    return-void
.end method

.method protected final hasWiFiSupport()Z
    .locals 1

    .prologue
    .line 351
    const/4 v0, 0x1

    return v0
.end method

.method protected hideBackButton()V
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/blur/setup/SetupActivity;->mHideBackButton:Z

    .line 274
    return-void
.end method

.method public hideConfigMenuItems()V
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/setup/SetupActivity;->mShowConfigMenuItems:Z

    .line 213
    return-void
.end method

.method protected launchGuidedTours()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 371
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 372
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.motorola.guidedtours"

    const-string v3, "com.motorola.guidedtours.GuidedToursLauncherActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 374
    const-string v1, "com.motorola.guidedtours.extraid"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 375
    const-string v1, "from_setup"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 376
    const/16 v1, 0x3e

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 377
    return-void
.end method

.method protected launchSetupNotify()V
    .locals 3

    .prologue
    .line 410
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 411
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Lcom/motorola/blur/setup/SetupActivity$launchSetupNotifyTask;

    invoke-direct {v1, p0, v0, p0}, Lcom/motorola/blur/setup/SetupActivity$launchSetupNotifyTask;-><init>(Lcom/motorola/blur/setup/SetupActivity;Landroid/content/pm/PackageManager;Lcom/motorola/blur/setup/SetupActivity;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 412
    return-void
.end method

.method protected final makeEmergencyCall()V
    .locals 2

    .prologue
    .line 342
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 343
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 344
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/motorola/blur/setup/SetupActivity;->goBack()V

    .line 335
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 132
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 134
    sget-boolean v3, Lcom/motorola/blur/setup/SetupActivity;->mFlexConfigurationLatch:Z

    if-nez v3, :cond_0

    .line 135
    sput-boolean v1, Lcom/motorola/blur/setup/SetupActivity;->mFlexConfigurationLatch:Z

    .line 136
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 137
    .local v0, "pref":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 138
    const-string v3, "ShowSkipSetupMenu"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/motorola/blur/setup/SetupActivity;->mShowSkipSetupMenu:Z

    .line 139
    const-string v3, "ShowConnectionChooser"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/motorola/blur/setup/SetupActivity;->mShowConnectionChooser:Z

    .line 141
    const-string v3, "SetupLaterAvailable"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/motorola/blur/setup/SetupActivity;->mShowSetupLaterAvailable:Z

    .line 145
    .end local v0    # "pref":Landroid/content/SharedPreferences;
    :cond_0
    invoke-static {p0}, Lcom/motorola/blur/setup/SilentBlurUtility;->isSilentRegistrationRequired(Landroid/content/Context;)Z

    move-result v3

    sput-boolean v3, Lcom/motorola/blur/setup/SetupActivity;->mSilentRegistrationRequired:Z

    .line 146
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    :goto_0
    sput-boolean v1, Lcom/motorola/blur/setup/SetupActivity;->mIsCDMA:Z

    .line 147
    return-void

    :cond_1
    move v1, v2

    .line 146
    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/16 v6, 0x36

    const/4 v5, 0x1

    .line 177
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 179
    iget-boolean v3, p0, Lcom/motorola/blur/setup/SetupActivity;->mShowConfigMenuItems:Z

    if-eqz v3, :cond_3

    sget-boolean v3, Lcom/motorola/blur/setup/SetupActivity;->mSilentRegistrationRequired:Z

    if-nez v3, :cond_3

    .line 180
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 181
    .local v1, "resources":Landroid/content/res/Resources;
    const/16 v3, 0x32

    const v4, 0x7f080032

    invoke-static {v1, p1, v3, v4}, Lcom/motorola/blur/setup/SetupActivity;->addMenuItem(Landroid/content/res/Resources;Landroid/view/Menu;II)V

    .line 182
    const/16 v3, 0x33

    const v4, 0x7f080045

    invoke-static {v1, p1, v3, v4}, Lcom/motorola/blur/setup/SetupActivity;->addMenuItem(Landroid/content/res/Resources;Landroid/view/Menu;II)V

    .line 183
    iget-boolean v3, p0, Lcom/motorola/blur/setup/SetupActivity;->mGotPreferences:Z

    if-nez v3, :cond_2

    .line 184
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 185
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    if-eqz v2, :cond_1

    .line 186
    const-string v3, "CloudPreference"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/motorola/blur/setup/SetupActivity;->mCloudPreference:Z

    .line 187
    const-string v3, "ro.build.type"

    const-string v4, "eng"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "buildtype":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/motorola/blur/setup/SetupActivity;->mCloudPreference:Z

    if-eqz v3, :cond_0

    const-string v3, "user"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 189
    const/16 v3, 0x34

    const v4, 0x7f080046

    invoke-static {v1, p1, v3, v4}, Lcom/motorola/blur/setup/SetupActivity;->addMenuItem(Landroid/content/res/Resources;Landroid/view/Menu;II)V

    .line 192
    :cond_0
    const-string v3, "WifiPreference"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/motorola/blur/setup/SetupActivity;->mWifiPreference:Z

    .line 193
    iget-boolean v3, p0, Lcom/motorola/blur/setup/SetupActivity;->mWifiPreference:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/motorola/blur/setup/SetupActivity;->hasWiFiSupport()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 194
    const/16 v3, 0x35

    const v4, 0x7f080047

    invoke-static {v1, p1, v3, v4}, Lcom/motorola/blur/setup/SetupActivity;->addMenuItem(Landroid/content/res/Resources;Landroid/view/Menu;II)V

    .line 198
    .end local v0    # "buildtype":Ljava/lang/String;
    :cond_1
    iput-boolean v5, p0, Lcom/motorola/blur/setup/SetupActivity;->mGotPreferences:Z

    .line 200
    .end local v2    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_2
    sget-boolean v3, Lcom/motorola/blur/setup/SetupActivity;->mIsCDMA:Z

    if-eqz v3, :cond_4

    .line 201
    const v3, 0x7f08004a

    invoke-static {v1, p1, v6, v3}, Lcom/motorola/blur/setup/SetupActivity;->addMenuItem(Landroid/content/res/Resources;Landroid/view/Menu;II)V

    .line 205
    :goto_0
    sget-boolean v3, Lcom/motorola/blur/setup/SetupActivity;->mShowSkipSetupMenu:Z

    if-eqz v3, :cond_3

    .line 206
    const/16 v3, 0x37

    const v4, 0x7f080071

    invoke-static {v1, p1, v3, v4}, Lcom/motorola/blur/setup/SetupActivity;->addMenuItem(Landroid/content/res/Resources;Landroid/view/Menu;II)V

    .line 208
    .end local v1    # "resources":Landroid/content/res/Resources;
    :cond_3
    return v5

    .line 203
    .restart local v1    # "resources":Landroid/content/res/Resources;
    :cond_4
    const v3, 0x7f080048

    invoke-static {v1, p1, v6, v3}, Lcom/motorola/blur/setup/SetupActivity;->addMenuItem(Landroid/content/res/Resources;Landroid/view/Menu;II)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 245
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 265
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 247
    :pswitch_0
    invoke-virtual {p0}, Lcom/motorola/blur/setup/SetupActivity;->makeEmergencyCall()V

    goto :goto_0

    .line 250
    :pswitch_1
    invoke-direct {p0}, Lcom/motorola/blur/setup/SetupActivity;->setUpApn()V

    goto :goto_0

    .line 253
    :pswitch_2
    invoke-direct {p0}, Lcom/motorola/blur/setup/SetupActivity;->setUpCloud()V

    goto :goto_0

    .line 256
    :pswitch_3
    invoke-direct {p0}, Lcom/motorola/blur/setup/SetupActivity;->setUpWifi()V

    goto :goto_0

    .line 259
    :pswitch_4
    invoke-direct {p0}, Lcom/motorola/blur/setup/SetupActivity;->showMEID()V

    goto :goto_0

    .line 262
    :pswitch_5
    invoke-virtual {p0}, Lcom/motorola/blur/setup/SetupActivity;->setUpCancel()V

    goto :goto_0

    .line 245
    nop

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 152
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 155
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/motorola/blur/setup/SetupActivity;->mHideBackButton:Z

    invoke-static {v0, v1}, Lcom/motorola/blur/setup/SetupUtility;->hideNavbarButton(Landroid/view/View;Z)V

    .line 156
    return-void
.end method

.method protected final setUpCancel()V
    .locals 2

    .prologue
    .line 280
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/motorola/blur/setup/SkipSetupActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 281
    return-void
.end method
