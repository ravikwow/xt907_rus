.class public final Lcom/motorola/blur/provider/DeviceSetup$Intents$Setup;
.super Ljava/lang/Object;
.source "DeviceSetup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/provider/DeviceSetup$Intents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Setup"
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.motorola.blur.setup.SETUP_BLUR_ACCOUNT"

.field public static final EXTRA_APP_NAME:Ljava/lang/String; = "app_name"

.field public static final EXTRA_IS_INITIAL_SETUP_FLOW:Ljava/lang/String; = "is_initial_setup_flow"

.field public static final EXTRA_MESSAGE:Ljava/lang/String; = "message"

.field public static final EXTRA_MOTOID:Ljava/lang/String; = "motoid"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "title"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
