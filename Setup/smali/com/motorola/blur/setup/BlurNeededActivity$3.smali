.class Lcom/motorola/blur/setup/BlurNeededActivity$3;
.super Ljava/lang/Object;
.source "BlurNeededActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/BlurNeededActivity;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/motorola/blur/setup/BlurNeededActivity$3;->this$0:Lcom/motorola/blur/setup/BlurNeededActivity;

    iput-object p2, p0, Lcom/motorola/blur/setup/BlurNeededActivity$3;->val$context:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/motorola/blur/setup/BlurNeededActivity$3;->this$0:Lcom/motorola/blur/setup/BlurNeededActivity;

    iget-object v1, p0, Lcom/motorola/blur/setup/BlurNeededActivity$3;->val$context:Landroid/app/Activity;

    # invokes: Lcom/motorola/blur/setup/BlurNeededActivity;->performCancel(Landroid/app/Activity;Landroid/content/DialogInterface;)V
    invoke-static {v0, v1, p1}, Lcom/motorola/blur/setup/BlurNeededActivity;->access$000(Lcom/motorola/blur/setup/BlurNeededActivity;Landroid/app/Activity;Landroid/content/DialogInterface;)V

    .line 128
    return-void
.end method
