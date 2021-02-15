select a.*, T.title_id
from  authors a
left join titleauthor t
on a.au_id = t.au_id
where t.title_id is NULL;







select a.*
from authors a
where a.au_id not in (select t.au_id
from titleauthor t
where t.au_id = a.au_id);

select a.au_fname, t.au_ord 
from authors a
full outer join titleauthor t
on a.au_id = t.au_id;

select  max(a.au_id), max(t.au_id)
--case when max(a.au_id) = MAX(t.au_id) then 1 else 0
from authors a
join titleauthor t
on a.au_id = t.au_id
where len(a.au_id) = len(t.au_id)
