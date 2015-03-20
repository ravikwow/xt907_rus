.class Lcom/motorola/blur/setup/CreateBlurAccountCreator$5;
.super Ljava/lang/Object;
.source "CreateBlurAccountCreator.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/setup/CreateBlurAccountCreator;->showRetryDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/CreateBlurAccountCreator;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/CreateBlurAccountCreator;)V
    .locals 0

    .prologue
    .line 570
    iput-object p1, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator$5;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountCreator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 573
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator$5;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountCreator;

    # getter for: Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;
    invoke-static {v1}, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->access$800(Lcom/motorola/blur/setup/CreateBlurAccountCreator;)Lcom/motorola/blur/setup/SetupProgressDialog;

    move-result-object v0

    .line 574
    .local v0, "prog":Lcom/motorola/blur/setup/SetupProgressDialog;
    invoke-virtual {v0}, Lcom/motorola/blur/setup/SetupProgressDialog;->getCurrentPoint()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/SetupProgressDialog;->goToProgressPoint(I)V

    .line 575
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator$5;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountCreator;

    # invokes: Lcom/motorola/blur/setup/CreateBlurAccountCreator;->requestSettings()V
    invoke-static {v1}, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->access$100(Lcom/motorola/blur/setup/CreateBlurAccountCreator;)V

    .line 576
    return-void
.end method
