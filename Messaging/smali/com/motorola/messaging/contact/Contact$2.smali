.class final Lcom/motorola/messaging/contact/Contact$2;
.super Ljava/lang/Object;
.source "Contact.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/contact/Contact;->asyncLoadSelfAvatar(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 644
    iput-object p1, p0, Lcom/motorola/messaging/contact/Contact$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcom/motorola/messaging/contact/Contact$2;->val$context:Landroid/content/Context;

    # invokes: Lcom/motorola/messaging/contact/Contact;->loadSelfAvatarData(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/motorola/messaging/contact/Contact;->access$100(Landroid/content/Context;)V

    .line 647
    return-void
.end method
