.class public final Lcom/motorola/blur/provider/DeviceSetup$Intents$AccountChanges;
.super Ljava/lang/Object;
.source "DeviceSetup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/provider/DeviceSetup$Intents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AccountChanges"
.end annotation


# static fields
.field public static final ACCOUNT_ID:Ljava/lang/String; = "account_id"

.field public static final ACCOUNT_UPDATED:Ljava/lang/String; = "com.motorola.blur.setup.account_update"

.field public static final ACTION_CHANGED:Ljava/lang/String; = "com.motorola.blur.setup.changes.ACTION_CHANGED"

.field public static final ACTION_DELETED:Ljava/lang/String; = "com.motorola.blur.setup.changes.ACTION_DELETED"

.field public static final ACTION_INSERTED:Ljava/lang/String; = "com.motorola.blur.setup.changes.ACTION_INSERTED"

.field public static final ACTION_RESET:Ljava/lang/String; = "com.motorola.blur.setup.changes.ACTION_RESET"

.field public static final ACTION_UPDATED:Ljava/lang/String; = "com.motorola.blur.setup.changes.ACTION_UPDATED"

.field public static final ACTION_VALIDATED:Ljava/lang/String; = "com.motorola.blur.setup.changes.ACTION_VALIDATED"

.field public static final ACTIVE_SERVICE_ID:Ljava/lang/String; = "_id"

.field public static final CAPABILITY:Ljava/lang/String; = "capability"

.field public static final PROVIDER_ID:Ljava/lang/String; = "provider_id"

.field public static final SETTINGS_UPDATED:Ljava/lang/String; = "com.motorola.blur.setup.settings_update"

.field public static final TYPE_CHANGED:Ljava/lang/String; = "com.motorola.blur.setup.changes.capability.%d"

.field public static final TYPE_HUX:Ljava/lang/String; = "com.motorola.blur.setup.changes.capability.hux"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
