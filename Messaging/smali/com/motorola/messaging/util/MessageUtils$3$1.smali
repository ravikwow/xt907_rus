.class Lcom/motorola/messaging/util/MessageUtils$3$1;
.super Ljava/lang/Object;
.source "MessageUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/util/MessageUtils$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/util/MessageUtils$3;

.field final synthetic val$keyListener:Landroid/text/method/KeyListener;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/util/MessageUtils$3;Landroid/text/method/KeyListener;)V
    .locals 0

    .prologue
    .line 1144
    iput-object p1, p0, Lcom/motorola/messaging/util/MessageUtils$3$1;->this$0:Lcom/motorola/messaging/util/MessageUtils$3;

    iput-object p2, p0, Lcom/motorola/messaging/util/MessageUtils$3$1;->val$keyListener:Landroid/text/method/KeyListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/motorola/messaging/util/MessageUtils$3$1;->this$0:Lcom/motorola/messaging/util/MessageUtils$3;

    iget-object v0, v0, Lcom/motorola/messaging/util/MessageUtils$3;->val$editor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/motorola/messaging/util/MessageUtils$3$1;->val$keyListener:Landroid/text/method/KeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 1147
    return-void
.end method
