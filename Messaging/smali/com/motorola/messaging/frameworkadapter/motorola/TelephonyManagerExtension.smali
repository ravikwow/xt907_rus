.class public Lcom/motorola/messaging/frameworkadapter/motorola/TelephonyManagerExtension;
.super Ljava/lang/Object;
.source "TelephonyManagerExtension.java"


# instance fields
.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/motorola/messaging/frameworkadapter/motorola/TelephonyManagerExtension;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 13
    return-void
.end method


# virtual methods
.method public isConcurrentVoiceAndData()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 16
    iget-object v3, p0, Lcom/motorola/messaging/frameworkadapter/motorola/TelephonyManagerExtension;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 17
    .local v0, "networkType":I
    iget-object v3, p0, Lcom/motorola/messaging/frameworkadapter/motorola/TelephonyManagerExtension;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 18
    const/16 v3, 0xd

    if-ne v0, v3, :cond_1

    .line 22
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_2
    iget-object v3, p0, Lcom/motorola/messaging/frameworkadapter/motorola/TelephonyManagerExtension;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    if-ne v3, v1, :cond_3

    .line 20
    const/4 v3, 0x3

    if-ge v0, v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v2

    .line 22
    goto :goto_0
.end method
