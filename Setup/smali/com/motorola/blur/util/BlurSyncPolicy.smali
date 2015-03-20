.class public Lcom/motorola/blur/util/BlurSyncPolicy;
.super Ljava/lang/Object;
.source "BlurSyncPolicy.java"


# static fields
.field public static final BLUR_MOTHER_SYNC_CHANGE:Ljava/lang/String; = "com.motorola.blur.provider.BLUR_MOTHER_SYNC_CHANGE"

.field public static final BLUR_MOTHER_SYNC_MASK:Ljava/lang/String; = "com.motorola.blur.provider.BLUR_MOTHER_SYNC_MASK"

.field public static final BLUR_MOTHER_SYNC_ON_MOBILE:I = 0x1

.field public static final BLUR_MOTHER_SYNC_ON_WIFI:I = 0x2

.field public static final BLUR_MOTHER_SYNC_POLICY:Ljava/lang/String; = "com.motorola.blur.provider.BLUR_MOTHER_SYNC_POLICY"

.field private static final SYNC_CONNECTION_BlurLiteDisabled:I = 0xff

.field private static final SYNC_CONNECTION_LimitedMobileConnectivity:I = 0x1

.field private static final SYNC_CONNECTION_NoDataConnectivity:I = 0x0

.field private static final SYNC_CONNECTION_UnlimitedMobileConnectivity:I = 0x5

.field private static final SYNC_CONNECTION_UnlimitedWifiConnectivity:I = 0x2

.field public static final SYNC_POLICY_CONTINUE:I = 0x0

.field public static final SYNC_POLICY_WIFI_REQUIRED:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method private static getState(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 56
    .local v0, "connMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 57
    .local v1, "netInfo":Landroid/net/NetworkInfo;
    const/4 v2, 0x0

    .line 59
    .local v2, "state":I
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 60
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 73
    :pswitch_0
    const/4 v2, 0x5

    .line 78
    :cond_0
    :goto_0
    return v2

    .line 64
    :pswitch_1
    const/4 v2, 0x5

    .line 65
    goto :goto_0

    .line 69
    :pswitch_2
    const/4 v2, 0x2

    .line 70
    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
