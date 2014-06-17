.class Lcom/android/mms/ui/ComposeMessageActivity$42;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->handleSendIntent()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$mimeType:Ljava/lang/String;

.field final synthetic val$numberToImport:I

.field final synthetic val$uris:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;ILjava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 3882
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$42;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$42;->val$numberToImport:I

    iput-object p3, p0, Lcom/android/mms/ui/ComposeMessageActivity$42;->val$uris:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/mms/ui/ComposeMessageActivity$42;->val$mimeType:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 3885
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$42;->val$numberToImport:I

    if-ge v0, v2, :cond_0

    .line 3886
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$42;->val$uris:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    .line 3887
    .local v1, "uri":Landroid/os/Parcelable;
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$42;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$42;->val$mimeType:Ljava/lang/String;

    check-cast v1, Landroid/net/Uri;

    .end local v1    # "uri":Landroid/os/Parcelable;
    const/4 v4, 0x1

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->addAttachment(Ljava/lang/String;Landroid/net/Uri;Z)V
    invoke-static {v2, v3, v1, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$6600(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;Landroid/net/Uri;Z)V

    .line 3885
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3889
    :cond_0
    return-void
.end method
