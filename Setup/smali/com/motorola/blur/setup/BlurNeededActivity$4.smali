.class Lcom/motorola/blur/setup/BlurNeededActivity$4;
.super Ljava/lang/Object;
.source "BlurNeededActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/setup/BlurNeededActivity;->showDialogAndRunSetup(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/BlurNeededActivity;

.field final synthetic val$context:Landroid/app/Activity;

.field final synthetic val$positiveButtonClicked:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/BlurNeededActivity;Landroid/app/Activity;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/motorola/blur/setup/BlurNeededActivity$4;->this$0:Lcom/motorola/blur/setup/BlurNeededActivity;

    iput-object p2, p0, Lcom/motorola/blur/setup/BlurNeededActivity$4;->val$context:Landroid/app/Activity;

    iput-object p3, p0, Lcom/motorola/blur/setup/BlurNeededActivity$4;->val$positiveButtonClicked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/motorola/blur/setup/BlurNeededActivity$4;->val$context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/setup/BlurNeededActivity$4;->val$positiveButtonClicked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/motorola/blur/setup/BlurNeededActivity$4;->val$context:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 136
    iget-object v0, p0, Lcom/motorola/blur/setup/BlurNeededActivity$4;->val$context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 138
    :cond_0
    return-void
.end method
