.class final Lcom/motorola/messaging/conversation/Conversation$2;
.super Ljava/lang/Object;
.source "Conversation.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 124
    iput-object p1, p0, Lcom/motorola/messaging/conversation/Conversation$2;->val$executor:Lcom/motorola/messaging/conversation/Conversation$DeleteThreadExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 127
    if-eqz p2, :cond_0

    .line 128
    iget-object v0, p0, Lcom/motorola/messaging/conversation/Conversation$2;->val$executor:Lcom/motorola/messaging/conversation/Conversation$DeleteThreadExecutor;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/motorola/messaging/conversation/Conversation$DeleteThreadExecutor;->setDeleteProtectedMessage(Z)V

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/conversation/Conversation$2;->val$executor:Lcom/motorola/messaging/conversation/Conversation$DeleteThreadExecutor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/motorola/messaging/conversation/Conversation$DeleteThreadExecutor;->setDeleteProtectedMessage(Z)V

    goto :goto_0
.end method
