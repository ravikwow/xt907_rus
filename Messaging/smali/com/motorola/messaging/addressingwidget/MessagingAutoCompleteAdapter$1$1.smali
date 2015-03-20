.class Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter$1$1;
.super Ljava/lang/Object;
.source "MessagingAutoCompleteAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter$1;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter$1;

.field final synthetic val$photoBytes:[B


# direct methods
.method constructor <init>(Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter$1;[B)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter$1$1;->this$1:Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter$1;

    iput-object p2, p0, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter$1$1;->val$photoBytes:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 193
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter$1$1;->this$1:Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter$1;

    iget-object v0, v0, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter$1;->this$0:Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;

    # getter for: Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;->mPhotoCacheMap:Landroid/util/LruCache;
    invoke-static {v0}, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;->access$200(Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;)Landroid/util/LruCache;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter$1$1;->this$1:Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter$1;

    iget-object v1, v1, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter$1;->val$photoThumbnailUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter$1$1;->val$photoBytes:[B

    invoke-virtual {v0, v1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    return-void
.end method
