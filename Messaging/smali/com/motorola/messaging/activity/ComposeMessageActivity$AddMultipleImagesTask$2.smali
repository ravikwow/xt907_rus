.class Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask$2;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask;)V
    .locals 0

    .prologue
    .line 3960
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask$2;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 3962
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask$2;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask;

    invoke-virtual {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask;->abort()V

    .line 3963
    return-void
.end method
