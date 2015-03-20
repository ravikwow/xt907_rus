.class public final Lcom/motorola/blur/provider/MotorolaSettings;
.super Ljava/lang/Object;
.source "MotorolaSettings.java"


# static fields
.field public static final DATASWITCH_FEATURE_ENABLED:Ljava/lang/String; = "dataswitch_feature_enabled"

.field public static final DATASWITCH_SYNC_CONNECT_VALUE:Ljava/lang/String; = "dataswitch_sync_connect_value"

.field public static final USER_NEED_ACCEPT_MOTO_AGREEMENT:Ljava/lang/String; = "user_need_accept_moto_agreement"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 0
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I

    .prologue
    .line 16
    return p2
.end method
