.class Lcom/android/phone/CallCard$1;
.super Landroid/os/Handler;
.source "CallCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallCard;


# direct methods
.method constructor <init>(Lcom/android/phone/CallCard;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 177
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 185
    const-string v0, "CallCard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHandler: unexpected message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :goto_0
    return-void

    .line 181
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    # getter for: Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/phone/CallCard;->access$000(Lcom/android/phone/CallCard;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    # getter for: Lcom/android/phone/CallCard;->mLowResPhoto:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/phone/CallCard;->access$100(Lcom/android/phone/CallCard;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f02007c

    # invokes: Lcom/android/phone/CallCard;->showBigSizeImage(Landroid/widget/ImageView;Landroid/widget/ImageView;I)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/CallCard;->access$200(Landroid/widget/ImageView;Landroid/widget/ImageView;I)V

    goto :goto_0

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method
