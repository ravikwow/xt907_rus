.class final Lcom/motorola/messaging/conversation/Conversation$1;
.super Ljava/lang/Object;
.source "Conversation.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/conversation/Conversation;->buildConfirmDeleteThreadDialog(Lcom/motorola/messaging/conversation/Conversation$DeleteThreadExecutor;ZLandroid/content/Context;)Landroid/app/AlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$executor:Lcom/motorola/messaging/conversation/Conversation$DeleteThreadExecutor;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/conversation/Conversation$DeleteThreadExecutor;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/motorola/messaging/conversation/Conversation$1;->val$executor:Lcom/motorola/messaging/conversation/Conversation$DeleteThreadExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcom/motorola/messaging/conversation/Conversation$1;->val$executor:Lcom/motorola/messaging/conversation/Conversation$DeleteThreadExecutor;

    invoke-interface {v0}, Lcom/motorola/messaging/conversation/Conversation$DeleteThreadExecutor;->execute()V

    .line 103
    return-void
.end method
