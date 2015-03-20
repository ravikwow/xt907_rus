.class Lcom/motorola/blur/setup/BlurNeededActivity$2;
.super Ljava/lang/Object;
.source "BlurNeededActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
.method constructor <init>(Lcom/motorola/blur/setup/BlurNeededActivity;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/motorola/blur/setup/BlurNeededActivity$2;->this$0:Lcom/motorola/blur/setup/BlurNeededActivity;

    iput-object p2, p0, Lcom/motorola/blur/setup/BlurNeededActivity$2;->val$positiveButtonClicked:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/motorola/blur/setup/BlurNeededActivity$2;->val$context:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 115
    iget-object v0, p0, Lcom/motorola/blur/setup/BlurNeededActivity$2;->val$positiveButtonClicked:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 116
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 117
    iget-object v0, p0, Lcom/motorola/blur/setup/BlurNeededActivity$2;->this$0:Lcom/motorola/blur/setup/BlurNeededActivity;

    iget-object v1, p0, Lcom/motorola/blur/setup/BlurNeededActivity$2;->val$context:Landroid/app/Activity;

    # invokes: Lcom/motorola/blur/setup/BlurNeededActivity;->launchSetup(Landroid/app/Activity;)V
    invoke-static {v0, v1}, Lcom/motorola/blur/setup/BlurNeededActivity;->access$100(Lcom/motorola/blur/setup/BlurNeededActivity;Landroid/app/Activity;)V

    .line 118
    return-void
.end method
