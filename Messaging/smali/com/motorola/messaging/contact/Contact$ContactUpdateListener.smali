.class public interface abstract Lcom/motorola/messaging/contact/Contact$ContactUpdateListener;
.super Ljava/lang/Object;
.source "Contact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/contact/Contact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ContactUpdateListener"
.end annotation


# virtual methods
.method public abstract onContactInvalidated(Lcom/motorola/messaging/contact/Contact;)V
.end method

.method public abstract onContactUpdated(Lcom/motorola/messaging/contact/Contact;)V
.end method
