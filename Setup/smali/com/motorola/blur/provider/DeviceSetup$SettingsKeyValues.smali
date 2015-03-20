.class public final Lcom/motorola/blur/provider/DeviceSetup$SettingsKeyValues;
.super Ljava/lang/Object;
.source "DeviceSetup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/provider/DeviceSetup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SettingsKeyValues"
.end annotation


# static fields
.field public static final ANALYTICS_ACCEPTED_KEY:Ljava/lang/String; = "com.motorola.analytics.ada_accepted"

.field public static final PRIVACY_PROFILE_NAME_KEY:Ljava/lang/String; = "privacy_profile_name"

.field public static final PRIVACY_PROFILE_TAG_BLACKLIST_KEY:Ljava/lang/String; = "privacy_profile_tag_blacklist"

.field public static final SETUP_COMPLETED_KEY:Ljava/lang/String; = "setup_completed"

.field public static final TOS_ACCEPTED_KEY:Ljava/lang/String; = "tos_accepted"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
