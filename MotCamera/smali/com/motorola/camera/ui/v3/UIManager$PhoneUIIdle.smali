.class Lcom/motorola/camera/ui/v3/UIManager$PhoneUIIdle;
.super Lcom/motorola/camera/ui/v3/UIManager$AbstractPhoneUI;
.source "UIManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/v3/UIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneUIIdle"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/camera/ui/v3/UIManager;


# direct methods
.method private constructor <init>(Lcom/motorola/camera/ui/v3/UIManager;)V
    .locals 1

    .prologue
    .line 320
    iput-object p1, p0, Lcom/motorola/camera/ui/v3/UIManager$PhoneUIIdle;->this$0:Lcom/motorola/camera/ui/v3/UIManager;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/motorola/camera/ui/v3/UIManager$AbstractPhoneUI;-><init>(Lcom/motorola/camera/ui/v3/UIManager;Lcom/motorola/camera/ui/v3/UIManager$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/camera/ui/v3/UIManager;Lcom/motorola/camera/ui/v3/UIManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/camera/ui/v3/UIManager;
    .param p2, "x1"    # Lcom/motorola/camera/ui/v3/UIManager$1;

    .prologue
    .line 320
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/v3/UIManager$PhoneUIIdle;-><init>(Lcom/motorola/camera/ui/v3/UIManager;)V

    return-void
.end method


# virtual methods
.method onEntry()V
    .locals 0

    .prologue
    .line 324
    return-void
.end method

.method onExit()V
    .locals 0

    .prologue
    .line 328
    return-void
.end method
