.class final Lcom/motorola/messaging/conversation/Conversation$7;
.super Ljava/lang/Object;
.source "Conversation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/conversation/Conversation;->asyncDeleteEmpty(Landroid/content/Context;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$threadId:J


# direct methods
.method constructor <init>(Landroid/content/Context;J)V
    .locals 0

    .prologue
    .line 749
    iput-object p1, p0, Lcom/motorola/messaging/conversation/Conversation$7;->val$context:Landroid/content/Context;

    iput-wide p2, p0, Lcom/motorola/messaging/conversation/Conversation$7;->val$threadId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 751
    iget-object v0, p0, Lcom/motorola/messaging/conversation/Conversation$7;->val$context:Landroid/content/Context;

    iget-wide v1, p0, Lcom/motorola/messaging/conversation/Conversation$7;->val$threadId:J

    invoke-static {v0, v1, v2}, Lcom/motorola/messaging/conversation/Conversation;->deleteEmpty(Landroid/content/Context;J)V

    .line 752
    return-void
.end method
