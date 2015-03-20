.class Lcom/motorola/blur/setup/CreateBlurAccountCreator$4;
.super Landroid/os/AsyncTask;
.source "CreateBlurAccountCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/setup/CreateBlurAccountCreator;->finishSetup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/CreateBlurAccountCreator;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/CreateBlurAccountCreator;)V
    .locals 0

    .prologue
    .line 465
    iput-object p1, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator$4;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountCreator;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 465
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/motorola/blur/setup/CreateBlurAccountCreator$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 468
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator$4;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountCreator;

    # invokes: Lcom/motorola/blur/setup/CreateBlurAccountCreator;->setupYahooServices()V
    invoke-static {v0}, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->access$600(Lcom/motorola/blur/setup/CreateBlurAccountCreator;)V

    .line 469
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 465
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/motorola/blur/setup/CreateBlurAccountCreator$4;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .param p1, "arg"    # Ljava/lang/Void;

    .prologue
    .line 474
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator$4;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountCreator;

    iget-boolean v0, v0, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mSubscribed:Z

    if-nez v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator$4;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountCreator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->finishProgressUI(ZLjava/lang/String;)V

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator$4;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountCreator;

    # invokes: Lcom/motorola/blur/setup/CreateBlurAccountCreator;->finishSetupBroadcast()V
    invoke-static {v0}, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->access$700(Lcom/motorola/blur/setup/CreateBlurAccountCreator;)V

    .line 479
    return-void
.end method
