.class Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask$1;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 3955
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask$1;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 3957
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask$1;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask;

    invoke-virtual {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMultipleImagesTask;->abort()V

    .line 3958
    return-void
.end method
