.class Lcom/motorola/messaging/conversation/DraftCache$1;
.super Ljava/lang/Object;
.source "DraftCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/conversation/DraftCache;->refresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/conversation/DraftCache;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/conversation/DraftCache;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/motorola/messaging/conversation/DraftCache$1;->this$0:Lcom/motorola/messaging/conversation/DraftCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/motorola/messaging/conversation/DraftCache$1;->this$0:Lcom/motorola/messaging/conversation/DraftCache;

    # invokes: Lcom/motorola/messaging/conversation/DraftCache;->rebuildCache()V
    invoke-static {v0}, Lcom/motorola/messaging/conversation/DraftCache;->access$000(Lcom/motorola/messaging/conversation/DraftCache;)V

    .line 79
    return-void
.end method
