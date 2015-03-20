.class public interface abstract Lcom/motorola/messaging/vcard/VCardEntry$EntryElementIterator;
.super Ljava/lang/Object;
.source "VCardEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/vcard/VCardEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EntryElementIterator"
.end annotation


# virtual methods
.method public abstract onElement(Lcom/motorola/messaging/vcard/VCardEntry$EntryElement;)Z
.end method

.method public abstract onElementGroupEnded()V
.end method

.method public abstract onElementGroupStarted(Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;)V
.end method

.method public abstract onIterationEnded()V
.end method

.method public abstract onIterationStarted()V
.end method
