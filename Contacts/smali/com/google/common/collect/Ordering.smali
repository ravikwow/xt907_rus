.class public abstract Lcom/google/common/collect/Ordering;
.super Ljava/lang/Object;
.source "Ordering.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Ordering$ArbitraryOrdering;,
        Lcom/google/common/collect/Ordering$ArbitraryOrderingHolder;,
        Lcom/google/common/collect/Ordering$IncomparableValueException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 292
    .local p0, "this":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtCompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<TT;>;)",
            "Lcom/google/common/collect/Ordering",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    instance-of v0, p0, Lcom/google/common/collect/Ordering;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/common/collect/Ordering;

    .end local p0    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    :goto_0
    return-object p0

    .restart local p0    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    :cond_0
    new-instance v0, Lcom/google/common/collect/ComparatorOrdering;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ComparatorOrdering;-><init>(Ljava/util/Comparator;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static natural()Lcom/google/common/collect/Ordering;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtCompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lcom/google/common/collect/Ordering",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 82
    sget-object v0, Lcom/google/common/collect/NaturalOrdering;->INSTANCE:Lcom/google/common/collect/NaturalOrdering;

    return-object v0
.end method


# virtual methods
.method public abstract compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation
.end method

.method public max(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(TE;TE;)TE;"
        }
    .end annotation

    .prologue
    .line 653
    .local p0, "this":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TT;>;"
    .local p1, "a":Ljava/lang/Object;, "TE;"
    .local p2, "b":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .end local p1    # "a":Ljava/lang/Object;, "TE;"
    :goto_0
    return-object p1

    .restart local p1    # "a":Ljava/lang/Object;, "TE;"
    :cond_0
    move-object p1, p2

    goto :goto_0
.end method

.method public min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(TE;TE;)TE;"
        }
    .end annotation

    .prologue
    .line 730
    .local p0, "this":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TT;>;"
    .local p1, "a":Ljava/lang/Object;, "TE;"
    .local p2, "b":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    .end local p1    # "a":Ljava/lang/Object;, "TE;"
    :goto_0
    return-object p1

    .restart local p1    # "a":Ljava/lang/Object;, "TE;"
    :cond_0
    move-object p1, p2

    goto :goto_0
.end method

.method public nullsFirst()Lcom/google/common/collect/Ordering;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtCompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Lcom/google/common/collect/Ordering",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 375
    .local p0, "this":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TT;>;"
    new-instance v0, Lcom/google/common/collect/NullsFirstOrdering;

    invoke-direct {v0, p0}, Lcom/google/common/collect/NullsFirstOrdering;-><init>(Lcom/google/common/collect/Ordering;)V

    return-object v0
.end method

.method public nullsLast()Lcom/google/common/collect/Ordering;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtCompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Lcom/google/common/collect/Ordering",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 386
    .local p0, "this":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TT;>;"
    new-instance v0, Lcom/google/common/collect/NullsLastOrdering;

    invoke-direct {v0, p0}, Lcom/google/common/collect/NullsLastOrdering;-><init>(Lcom/google/common/collect/Ordering;)V

    return-object v0
.end method

.method public onResultOf(Lcom/google/common/base/Function;)Lcom/google/common/collect/Ordering;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtCompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Function",
            "<TF;+TT;>;)",
            "Lcom/google/common/collect/Ordering",
            "<TF;>;"
        }
    .end annotation

    .prologue
    .line 335
    .local p0, "this":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TT;>;"
    .local p1, "function":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<TF;+TT;>;"
    new-instance v0, Lcom/google/common/collect/ByFunctionOrdering;

    invoke-direct {v0, p1, p0}, Lcom/google/common/collect/ByFunctionOrdering;-><init>(Lcom/google/common/base/Function;Lcom/google/common/collect/Ordering;)V

    return-object v0
.end method

.method public reverse()Lcom/google/common/collect/Ordering;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtCompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Lcom/google/common/collect/Ordering",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 321
    .local p0, "this":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TT;>;"
    new-instance v0, Lcom/google/common/collect/ReverseOrdering;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ReverseOrdering;-><init>(Lcom/google/common/collect/Ordering;)V

    return-object v0
.end method
