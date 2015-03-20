.class Lcom/motorola/contacts/genie/GenieController$5;
.super Ljava/lang/Object;
.source "GenieController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/contacts/genie/GenieController;->completeQuest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/contacts/genie/GenieController;


# direct methods
.method constructor <init>(Lcom/motorola/contacts/genie/GenieController;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/motorola/contacts/genie/GenieController$5;->this$0:Lcom/motorola/contacts/genie/GenieController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/motorola/contacts/genie/GenieController$5;->this$0:Lcom/motorola/contacts/genie/GenieController;

    # getter for: Lcom/motorola/contacts/genie/GenieController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/motorola/contacts/genie/GenieController;->access$400(Lcom/motorola/contacts/genie/GenieController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/contacts/genie/GenieController$5;->this$0:Lcom/motorola/contacts/genie/GenieController;

    # getter for: Lcom/motorola/contacts/genie/GenieController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/contacts/genie/GenieController;->access$400(Lcom/motorola/contacts/genie/GenieController;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 243
    return-void
.end method
