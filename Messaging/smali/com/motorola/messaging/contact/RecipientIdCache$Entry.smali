.class public Lcom/motorola/messaging/contact/RecipientIdCache$Entry;
.super Ljava/lang/Object;
.source "RecipientIdCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/contact/RecipientIdCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field public id:J

.field public number:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-wide p1, p0, Lcom/motorola/messaging/contact/RecipientIdCache$Entry;->id:J

    .line 44
    iput-object p3, p0, Lcom/motorola/messaging/contact/RecipientIdCache$Entry;->number:Ljava/lang/String;

    .line 45
    return-void
.end method
