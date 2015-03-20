.class Lcom/motorola/camera/Device$AutoFocusCallback;
.super Ljava/lang/Object;
.source "Device.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoFocusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/camera/Device;


# direct methods
.method private constructor <init>(Lcom/motorola/camera/Device;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/motorola/camera/Device$AutoFocusCallback;->this$0:Lcom/motorola/camera/Device;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/camera/Device;Lcom/motorola/camera/Device$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/camera/Device;
    .param p2, "x1"    # Lcom/motorola/camera/Device$1;

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/motorola/camera/Device$AutoFocusCallback;-><init>(Lcom/motorola/camera/Device;)V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 1
    .param p1, "focused"    # Z
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/motorola/camera/Device$AutoFocusCallback;->this$0:Lcom/motorola/camera/Device;

    # getter for: Lcom/motorola/camera/Device;->mFocusResultListener:Lcom/motorola/camera/Device$FocusResultListener;
    invoke-static {v0}, Lcom/motorola/camera/Device;->access$200(Lcom/motorola/camera/Device;)Lcom/motorola/camera/Device$FocusResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/motorola/camera/Device$AutoFocusCallback;->this$0:Lcom/motorola/camera/Device;

    # getter for: Lcom/motorola/camera/Device;->mFocusResultListener:Lcom/motorola/camera/Device$FocusResultListener;
    invoke-static {v0}, Lcom/motorola/camera/Device;->access$200(Lcom/motorola/camera/Device;)Lcom/motorola/camera/Device$FocusResultListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/motorola/camera/Device$FocusResultListener;->onAutoFocusComplete(Z)V

    .line 124
    :cond_0
    return-void
.end method
