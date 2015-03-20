.class public interface abstract Lcom/motorola/messaging/composer/WorkingMessage$MessageStatusListener;
.super Ljava/lang/Object;
.source "WorkingMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/composer/WorkingMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MessageStatusListener"
.end annotation


# virtual methods
.method public abstract onAttachmentChanged()V
.end method

.method public abstract onDraftsLoaded()V
.end method

.method public abstract onMessageSent()V
.end method

.method public abstract onPreMessageSent()V
.end method

.method public abstract onProtocolChanged(ZI)V
.end method
