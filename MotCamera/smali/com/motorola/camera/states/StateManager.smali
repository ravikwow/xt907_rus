.class public Lcom/motorola/camera/states/StateManager;
.super Ljava/lang/Object;
.source "StateManager.java"

# interfaces
.implements Lcom/motorola/camera/Device$DeviceErrorListener;
.implements Lcom/motorola/camera/states/RequestCompletedOrErrorInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/states/StateManager$CAMERA_STATE;,
        Lcom/motorola/camera/states/StateManager$AbstractStateHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StateManager"


# instance fields
.field private mController:Lcom/motorola/camera/Controller;

.field private mHandler:Landroid/os/Handler;

.field private mState:Lcom/motorola/camera/states/AbstractState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/motorola/camera/states/StateManager$AbstractStateHandler;

    invoke-direct {v0, p0}, Lcom/motorola/camera/states/StateManager$AbstractStateHandler;-><init>(Lcom/motorola/camera/states/StateManager;)V

    iput-object v0, p0, Lcom/motorola/camera/states/StateManager;->mHandler:Landroid/os/Handler;

    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/camera/states/StateManager;)Lcom/motorola/camera/states/AbstractState;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/camera/states/StateManager;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/motorola/camera/states/StateManager;->mState:Lcom/motorola/camera/states/AbstractState;

    return-object v0
.end method


# virtual methods
.method public addOnStateChangeListener(Lcom/motorola/camera/states/AbstractState$OnStateChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/motorola/camera/states/AbstractState$OnStateChangeListener;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/motorola/camera/states/StateManager;->mState:Lcom/motorola/camera/states/AbstractState;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/states/AbstractState;->addOnStateChangeListener(Lcom/motorola/camera/states/AbstractState$OnStateChangeListener;)V

    .line 92
    return-void
.end method

.method public closeApplication()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/motorola/camera/states/StateManager;->mState:Lcom/motorola/camera/states/AbstractState;

    invoke-virtual {v0}, Lcom/motorola/camera/states/AbstractState;->closeApplication()V

    .line 77
    return-void
.end method

.method protected onClose(Lcom/motorola/camera/Util$ReturnResult;)V
    .locals 1
    .param p1, "result"    # Lcom/motorola/camera/Util$ReturnResult;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/motorola/camera/states/StateManager;->mController:Lcom/motorola/camera/Controller;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/Controller;->closeApplicationwithResult(Lcom/motorola/camera/Util$ReturnResult;)V

    .line 67
    return-void
.end method

.method public onError(I)V
    .locals 1
    .param p1, "msgId"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lcom/motorola/camera/states/StateManager;->mState:Lcom/motorola/camera/states/AbstractState;

    invoke-virtual {v0}, Lcom/motorola/camera/states/AbstractState;->onHandleFatalError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/motorola/camera/states/StateManager;->mController:Lcom/motorola/camera/Controller;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/Controller;->closeApplicationWithError(I)V

    .line 73
    :cond_0
    return-void
.end method

.method public onHandleFatalError()Z
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/motorola/camera/states/StateManager;->mState:Lcom/motorola/camera/states/AbstractState;

    invoke-virtual {v0}, Lcom/motorola/camera/states/AbstractState;->onHandleFatalError()Z

    move-result v0

    return v0
.end method

.method public pauseApplication()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/motorola/camera/states/StateManager;->mState:Lcom/motorola/camera/states/AbstractState;

    invoke-virtual {v0}, Lcom/motorola/camera/states/AbstractState;->pauseApplication()V

    .line 81
    return-void
.end method

.method public removeOnStateChangeListener(Lcom/motorola/camera/states/AbstractState$OnStateChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/motorola/camera/states/AbstractState$OnStateChangeListener;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/motorola/camera/states/StateManager;->mState:Lcom/motorola/camera/states/AbstractState;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/states/AbstractState;->removeOnStateChangeListener(Lcom/motorola/camera/states/AbstractState$OnStateChangeListener;)V

    .line 96
    return-void
.end method

.method public request(Lcom/motorola/camera/Event;)Z
    .locals 1
    .param p1, "event"    # Lcom/motorola/camera/Event;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/motorola/camera/states/StateManager;->mState:Lcom/motorola/camera/states/AbstractState;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/states/AbstractState;->request(Lcom/motorola/camera/Event;)Z

    move-result v0

    return v0
.end method

.method public final requestCompletedOrError(IIILjava/lang/Object;)V
    .locals 2
    .param p1, "messageId"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 117
    iget-object v1, p0, Lcom/motorola/camera/states/StateManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 118
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/motorola/camera/states/StateManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 119
    return-void
.end method

.method public setSurface(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/motorola/camera/states/StateManager;->mState:Lcom/motorola/camera/states/AbstractState;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/states/AbstractState;->setSurface(Landroid/view/SurfaceHolder;)V

    .line 85
    return-void
.end method

.method protected startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V
    .locals 1
    .param p1, "launchRequest"    # Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/motorola/camera/states/StateManager;->mController:Lcom/motorola/camera/Controller;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/Controller;->startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V

    .line 63
    return-void
.end method

.method public startStateMachine(Lcom/motorola/camera/Controller;)V
    .locals 1
    .param p1, "controller"    # Lcom/motorola/camera/Controller;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/motorola/camera/states/StateManager;->mController:Lcom/motorola/camera/Controller;

    .line 50
    invoke-static {}, Lcom/motorola/camera/states/InitState;->getInstance()Lcom/motorola/camera/states/InitState;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/states/StateManager;->mState:Lcom/motorola/camera/states/AbstractState;

    .line 51
    iget-object v0, p0, Lcom/motorola/camera/states/StateManager;->mState:Lcom/motorola/camera/states/AbstractState;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/states/AbstractState;->setActive(Lcom/motorola/camera/states/StateManager;)V

    .line 53
    invoke-static {}, Lcom/motorola/camera/DeviceWrapper;->getDevice()Lcom/motorola/camera/Device;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/Device;->setErrorListener(Lcom/motorola/camera/Device$DeviceErrorListener;)V

    .line 54
    return-void
.end method

.method public surfaceDestroyed()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/motorola/camera/states/StateManager;->mState:Lcom/motorola/camera/states/AbstractState;

    invoke-virtual {v0}, Lcom/motorola/camera/states/AbstractState;->surfaceDestroyed()V

    .line 89
    return-void
.end method

.method protected switchToState(Lcom/motorola/camera/states/AbstractState;)V
    .locals 1
    .param p1, "newState"    # Lcom/motorola/camera/states/AbstractState;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/motorola/camera/states/StateManager;->mState:Lcom/motorola/camera/states/AbstractState;

    .line 58
    iget-object v0, p0, Lcom/motorola/camera/states/StateManager;->mState:Lcom/motorola/camera/states/AbstractState;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/states/AbstractState;->setActive(Lcom/motorola/camera/states/StateManager;)V

    .line 59
    return-void
.end method
