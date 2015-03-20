.class final Lcom/motorola/messaging/contact/Contact$1;
.super Ljava/lang/Object;
.source "Contact.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/contact/Contact;->asyncUpdateContact(Lcom/motorola/messaging/contact/Contact;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$c:Lcom/motorola/messaging/contact/Contact;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/contact/Contact;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/motorola/messaging/contact/Contact$1;->val$c:Lcom/motorola/messaging/contact/Contact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/motorola/messaging/contact/Contact$1;->val$c:Lcom/motorola/messaging/contact/Contact;

    # invokes: Lcom/motorola/messaging/contact/Contact;->updateContact(Lcom/motorola/messaging/contact/Contact;)V
    invoke-static {v0}, Lcom/motorola/messaging/contact/Contact;->access$000(Lcom/motorola/messaging/contact/Contact;)V

    .line 338
    return-void
.end method
