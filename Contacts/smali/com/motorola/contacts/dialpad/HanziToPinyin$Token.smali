.class public Lcom/motorola/contacts/dialpad/HanziToPinyin$Token;
.super Ljava/lang/Object;
.source "HanziToPinyin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/contacts/dialpad/HanziToPinyin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Token"
.end annotation


# instance fields
.field public source:Ljava/lang/String;

.field public target:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 266
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 267
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "target"    # Ljava/lang/String;

    .prologue
    .line 269
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iput p1, p0, Lcom/motorola/contacts/dialpad/HanziToPinyin$Token;->type:I

    .line 271
    iput-object p2, p0, Lcom/motorola/contacts/dialpad/HanziToPinyin$Token;->source:Ljava/lang/String;

    .line 272
    iput-object p3, p0, Lcom/motorola/contacts/dialpad/HanziToPinyin$Token;->target:Ljava/lang/String;

    .line 273
    return-void
.end method
