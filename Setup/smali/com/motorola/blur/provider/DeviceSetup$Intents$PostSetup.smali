.class public final Lcom/motorola/blur/provider/DeviceSetup$Intents$PostSetup;
.super Ljava/lang/Object;
.source "DeviceSetup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/provider/DeviceSetup$Intents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PostSetup"
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "android.intent.action.VIEW"

.field public static final TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.motorola.post_setup_activity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
