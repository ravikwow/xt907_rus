.class public Lcom/motorola/blur/setup/SetupActivity$FinishSetupTask;
.super Landroid/os/AsyncTask;
.source "SetupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/setup/SetupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FinishSetupTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsSetupSuccess:Z

.field final synthetic this$0:Lcom/motorola/blur/setup/SetupActivity;


# direct methods
.method private constructor <init>(Lcom/motorola/blur/setup/SetupActivity;)V
    .locals 1

    .prologue
    .line 423
    iput-object p1, p0, Lcom/motorola/blur/setup/SetupActivity$FinishSetupTask;->this$0:Lcom/motorola/blur/setup/SetupActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 418
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/blur/setup/SetupActivity$FinishSetupTask;->mContext:Landroid/content/Context;

    .line 419
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/setup/SetupActivity$FinishSetupTask;->mIsSetupSuccess:Z

    .line 425
    return-void
.end method

.method public constructor <init>(Lcom/motorola/blur/setup/SetupActivity;Landroid/content/Context;Z)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "isSetupSuccess"    # Z

    .prologue
    .line 432
    iput-object p1, p0, Lcom/motorola/blur/setup/SetupActivity$FinishSetupTask;->this$0:Lcom/motorola/blur/setup/SetupActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 418
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/blur/setup/SetupActivity$FinishSetupTask;->mContext:Landroid/content/Context;

    .line 419
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/setup/SetupActivity$FinishSetupTask;->mIsSetupSuccess:Z

    .line 433
    iput-object p2, p0, Lcom/motorola/blur/setup/SetupActivity$FinishSetupTask;->mContext:Landroid/content/Context;

    .line 434
    iput-boolean p3, p0, Lcom/motorola/blur/setup/SetupActivity$FinishSetupTask;->mIsSetupSuccess:Z

    .line 435
    return-void
.end method


# virtual methods
.method protected beforeFinish()V
    .locals 0

    .prologue
    .line 462
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 443
    iget-boolean v0, p0, Lcom/motorola/blur/setup/SetupActivity$FinishSetupTask;->mIsSetupSuccess:Z

    iget-object v1, p0, Lcom/motorola/blur/setup/SetupActivity$FinishSetupTask;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/motorola/blur/setup/SetupUtility;->finishSetup(ZLandroid/content/Context;Z)V

    .line 444
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 417
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/motorola/blur/setup/SetupActivity$FinishSetupTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 453
    iget-object v0, p0, Lcom/motorola/blur/setup/SetupActivity$FinishSetupTask;->this$0:Lcom/motorola/blur/setup/SetupActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 454
    invoke-virtual {p0}, Lcom/motorola/blur/setup/SetupActivity$FinishSetupTask;->beforeFinish()V

    .line 455
    iget-object v0, p0, Lcom/motorola/blur/setup/SetupActivity$FinishSetupTask;->this$0:Lcom/motorola/blur/setup/SetupActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 456
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 417
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/motorola/blur/setup/SetupActivity$FinishSetupTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
